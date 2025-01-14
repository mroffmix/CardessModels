# API

This is an api generated from a OpenAPI 3.0 spec with [SwagGen](https://github.com/yonaskolb/SwagGen)

## Operation

Each operation lives under the `API` namespace and within an optional tag: `API(.tagName).operationId`. If an operation doesn't have an operationId one will be generated from the path and method.

Each operation has a nested `Request` and a `Response`, as well as a static `service` property

#### Service

This is the struct that contains the static information about an operation including it's id, tag, method, pre-modified path, and authorization requirements. It has a generic `ResponseType` type which maps to the `Response` type.
You shouldn't really need to interact with this service type.

#### Request

Each request is a subclass of `APIRequest` and has an `init` with a body param if it has a body, and a `options` struct for other url and path parameters. There is also a convenience init for passing parameters directly.
The `options` and `body` structs are both mutable so they can be modified before actually sending the request.

#### Response

The response is an enum of all the possible responses the request can return. it also contains getters for the `statusCode`, whether it was `successful`, and the actual decoded optional `success` response. If the operation only has one type of failure type there is also an optional `failure` type.

## Model
Models that are sent and returned from the API are mutable classes. Each model is `Equatable` and `Codable`.

`Required` properties are non optional and non-required are optional

All properties can be passed into the initializer, with `required` properties being mandatory.

If a model has `additionalProperties` it will have a subscript to access these by string

## APIClient
The `APIClient` is used to encode, authorize, send, monitor, and decode the requests. There is a `APIClient.default` that uses the default `baseURL` otherwise a custom one can be initialized:

```swift
public init(baseURL: String, sessionManager: SessionManager = .default, defaultHeaders: [String: String] = [:], behaviours: [RequestBehaviour] = [])
```

#### APIClient properties

- `baseURL`: The base url that every request `path` will be appended to
- `behaviours`: A list of [Request Behaviours](#requestbehaviour) to add to every request
- `sessionManager`: An `Alamofire.SessionManager` that can be customized
- `defaultHeaders`: Headers that will be applied to every request
- `decodingQueue`: The `DispatchQueue` to decode responses on

#### Making a request
To make a request first initialize a [Request](#request) and then pass it to `makeRequest`. The `complete` closure will be called with an `APIResponse`

```swift
func makeRequest<T>(_ request: APIRequest<T>, behaviours: [RequestBehaviour] = [], queue: DispatchQueue = DispatchQueue.main, complete: @escaping (APIResponse<T>) -> Void) -> Request? {
```

Example request (that is not neccessarily in this api):

```swift

let getUserRequest = API.User.GetUser.Request(id: 123)
let apiClient = APIClient.default

apiClient.makeRequest(getUserRequest) { apiResponse in
    switch apiResponse {
        case .result(let apiResponseValue):
        	if let user = apiResponseValue.success {
        		print("GetUser returned user \(user)")
        	} else {
        		print("GetUser returned \(apiResponseValue)")
        	}
        case .error(let apiError):
        	print("GetUser failed with \(apiError)")
    }
}
```

Each [Request](#request) also has a `makeRequest` convenience function that uses `API.shared`.

#### APIResponse
The `APIResponse` that gets passed to the completion closure contains the following properties:

- `request`: The original request
- `result`: A `Result` type either containing an `APIClientError` or the [Response](#response) of the request
- `urlRequest`: The `URLRequest` used to send the request
- `urlResponse`: The `HTTPURLResponse` that was returned by the request
- `data`: The `Data` returned by the request.
- `timeline`: The `Alamofire.Timeline` of the request which contains timing information.

#### Encoding and Decoding
Only JSON requests and responses are supported. These are encoded and decoded by `JSONEncoder` and `JSONDecoder` respectively, using Swift's `Codable` apis.
There are some options to control how invalid JSON is handled when decoding and these are available as static properties on `API`:

- `safeOptionalDecoding`: Whether to discard any errors when decoding optional properties. Defaults to `true`.
- `safeArrayDecoding`: Whether to remove invalid elements instead of throwing when decoding arrays. Defaults to `true`.

Dates are encoded and decoded differently according to the swagger date format. They use different `DateFormatter`'s that you can set.
- `date-time`
    - `DateTime.dateEncodingFormatter`: defaults to `yyyy-MM-dd'T'HH:mm:ss.Z`
    - `DateTime.dateDecodingFormatters`: an array of date formatters. The first one to decode successfully will be used
- `date`
    - `DateDay.dateFormatter`: defaults to `yyyy-MM-dd`

#### APIClientError
This is error enum that `APIResponse.result` may contain:

```swift
public enum APIClientError: Error {
    case unexpectedStatusCode(statusCode: Int, data: Data)
    case decodingError(DecodingError)
    case requestEncodingError(String)
    case validationError(String)
    case networkError(Error)
    case unknownError(Error)
}
```

#### RequestBehaviour
Request behaviours are used to modify, authorize, monitor or respond to requests. They can be added to the `APIClient.behaviours` for all requests, or they can passed into `makeRequest` for just that single request.

`RequestBehaviour` is a protocol you can conform to with each function being optional. As the behaviours must work across multiple different request types, they only have access to a typed erased `AnyRequest`.

```swift
public protocol RequestBehaviour {

    /// runs first and allows the requests to be modified. If modifying asynchronously use validate
    func modifyRequest(request: AnyRequest, urlRequest: URLRequest) -> URLRequest

    /// validates and modifies the request. complete must be called with either .success or .fail
    func validate(request: AnyRequest, urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void)

    /// called before request is sent
    func beforeSend(request: AnyRequest)

    /// called when request successfuly returns a 200 range response
    func onSuccess(request: AnyRequest, result: Any)

    /// called when request fails with an error. This will not be called if the request returns a known response even if the a status code is out of the 200 range
    func onFailure(request: AnyRequest, error: APIClientError)

    /// called if the request recieves a network response. This is not called if request fails validation or encoding
    func onResponse(request: AnyRequest, response: AnyResponse)
}
```

### Authorization
Each request has an optional `securityRequirement`. You can create a `RequestBehaviour` that checks this requirement and adds some form of authorization (usually via headers) in `validate` or `modifyRequest`. An alternative way is to set the `APIClient.defaultHeaders` which applies to all requests.

#### Reactive and Promises
To add support for a specific asynchronous library, just add an extension on `APIClient` and add a function that wraps the `makeRequest` function and converts from a closure based syntax to returning the object of choice (stream, future...ect)

## Models

- **AccessoryInfo**
- **ActivityDocmosis**
- **ActivityInfo**
- **AnalyticsServiceActivityTypeStatisticsData**
- **AnalyticsServiceCapacityData**
- **AnalyticsServiceEnumsLeadChannel**
- **AnalyticsServiceLeadStatisticsData**
- **ApplicationClientInfo**
- **ApplicationClientSecretInfo**
- **ApplicationSettings**
- **BDCLocationActivities**
- **BDCRedirectCallInfo**
- **BaseDocmosisRenderRequest**
- **CallRedirectSettingsInfo**
- **CarCheckNotificationInfo**
- **ChatMessageView**
- **CommunicationChangePasswordData**
- **CommunicationEventMapping**
- **CommunicationEventMappingType**
- **CommunicationImportImportBulkResponse**
- **CommunicationImportImportEntityResponse**
- **CommunicationImportImportResponse**
- **CommunicationImportImportResponseStatus**
- **CommunicationLocationInfo**
- **CommunicationLocationSubType**
- **CommunicationLoginData**
- **CommunicationModelsEnumsApplicationType**
- **CommunicationModelsEnumsInitialRequest**
- **CommunicationModelsEnumsLeadPipelinePhase**
- **CommunicationModelsEnumsLeadVehicleType**
- **CommunicationModelsEnumsRejectionReason**
- **CommunicationModelsEnumsTypeOfPayment**
- **CommunicationPagingQueryParameters**
- **CommunicationRemoteConsultingCallInfo**
- **CommunicationRemoteConsultingCustomer**
- **CommunicationRemoteConsultingCustomerSelectedVehicle**
- **CommunicationRemoteConsultingEngageOverview**
- **CommunicationRemoteConsultingProcessType**
- **CommunicationRemoteConsultingQuestionnaireIssue**
- **CommunicationRemoteConsultingRemoteServiceCase**
- **CommunicationRemoteConsultingRemoteServiceCaseState**
- **CommunicationRemoteConsultingVehicleOverview**
- **CommunicationResetPasswordData**
- **CommunicationServiceEntity**
- **CommunicationServiceEnumsEventSenderType**
- **CommunicationServiceEnumsExternalDeliveryState**
- **CommunicationServiceEnumsExternalEngagementState**
- **CommunicationServiceEnumsTemplateType**
- **CommunicationServiceMessage**
- **CommunicationServiceRenderedMessage**
- **CommunicationServiceTemplate**
- **CommunicationServiceTemplateLink**
- **CommunicationTaxonomyTranslation**
- **CommunicationTaxonomyType**
- **CommunicationTaxonomyValue**
- **CommunicationTradeInCase**
- **CommunicationTradeInCaseAttachments**
- **CommunicationTradeInCaseInfo**
- **CommunicationTradeInCaseLeadSimple**
- **CommunicationTradeInCaseMargins**
- **CommunicationTradeInCaseSourceType**
- **CommunicationTradeInCaseStatus**
- **CommunicationTradeInCaseStatusHistory**
- **CommunicationTradeInCaseVehicle**
- **CommunicationTradeInCaseVehicleRemarks**
- **CommunicationTradeInCaseVehicleSimple**
- **CommunicationTradeInCombineValue**
- **CommunicationTradeInCustomerPrices**
- **CommunicationTradeInEvaluationWeight**
- **CommunicationTradeInForecastItem**
- **CommunicationTradeInLeasingContract**
- **CommunicationTradeInModifiedValuation**
- **CommunicationTradeInMonetaryValue**
- **CommunicationTradeInReasonForDeviation**
- **CommunicationTradeInRemoteServiceCaseLink**
- **CommunicationTradeInRentalContract**
- **CommunicationTradeInResource**
- **CommunicationTradeInResourceAccess**
- **CommunicationTradeInResourceFileType**
- **CommunicationTradeInValuatedVehicle**
- **CommunicationTradeInValuation**
- **CommunicationTradeInValuationOverview**
- **CommunicationTradeInValuationSource**
- **CommunicationTradeInValuationType**
- **CommunicationTradeInVehicleEvaluation**
- **CommunicationVehicleTaxonomyValues**
- **ControllersLeadImportControllerFacebookRegisterRequest**
- **CustomerDataAssignationCustomerInfo**
- **CustomerDataCustomerCurrentVehicleInfo**
- **CustomerDataCustomerInfo**
- **CustomerDataCustomerPotentialVehicleInfo**
- **CustomerDataEnumsImportCustomerSource**
- **CustomerDataEnumsLeadSource**
- **CustomerDataEnumsLeadSourceExtention**
- **CustomerDataWebEventInfo**
- **CustomerPortalConsentTextData**
- **CustomerPortalEnumsPortalTextType**
- **CustomerPortalPortalTextData**
- **DateUsersTimeSlots**
- **DefaultProcessTemplateInfo**
- **DeliveryBoxBookingInfo**
- **DeliveryBoxInfo**
- **DeviceBindingInfo**
- **DeviceBindingRequest**
- **DocmosisEntityRenderRequest**
- **DynamicEventData**
- **EnumsActivityStatus**
- **EnumsActivityType**
- **EnumsCarState**
- **EnumsCarrierType**
- **EnumsDealerLogoCorner**
- **EnumsDeliveryStatus**
- **EnumsDocumentCustomerType**
- **EnumsDocumentType**
- **EnumsEngageTriggerType**
- **EnumsEventType**
- **EnumsFinancingType**
- **EnumsImportLeadSource**
- **EnumsLeadCloseReason**
- **EnumsLeadExportEvent**
- **EnumsLeadStatus**
- **EnumsLeadType**
- **EnumsLeadVehicleCalculationType**
- **EnumsLeadVehicleDocumentPurpose**
- **EnumsLeadVehicleDocumentType**
- **EnumsMessageSource**
- **EnumsMessageType**
- **EnumsNotificationType**
- **EnumsPersonAvailability**
- **EnumsPersonAvailabilityTime**
- **EnumsPersonEmploymentType**
- **EnumsPersonLivingSituation**
- **EnumsPersonRelationshipStatus**
- **EnumsPersonTitle**
- **EnumsProductType**
- **EnumsRequestContactType**
- **EnumsResourceType**
- **EnumsUserState**
- **EnumsUserType**
- **ExternalLeadEmailCreationResponse**
- **ExternalLeadEmailInfo**
- **ExternalLeadEmailType**
- **ExternalLeadVehicle**
- **FacebookBusiness**
- **FacebookFormList**
- **FacebookPage**
- **FacebookPageContainer**
- **FacebookPageSubscription**
- **FacebookWABusiness**
- **FacebookWAContainer**
- **FacebookWAPhoneNumber**
- **FacebookWAPhoneNumberThroughput**
- **FacebookWAPhoneNumberWebhookConfiguration**
- **FilterItemInfo**
- **FullLeadVehicleData**
- **GridViewInfo**
- **HooksFacebookFacebookPageMappingInfo**
- **HooksWhatsappChatMessageInfo**
- **HooksWhatsappComponent**
- **HooksWhatsappExample**
- **HooksWhatsappThroughput**
- **HooksWhatsappWAPhoneNumber**
- **HooksWhatsappWATemplate**
- **ImageDocmosis**
- **ImportBulkRequestlessThanExternalLeadVehiclegreaterThan**
- **ImportRequestlessThanExternalLeadVehiclegreaterThan**
- **ImportTopDriveResponse**
- **KeyValuePairlessThanStringStringgreaterThan**
- **LeadAutoAssignSettingsInfo**
- **LeadCloseInfo**
- **LeadData**
- **LeadEventInfo**
- **LeadExportLogInfo**
- **LeadHistoryData**
- **LeadInfo**
- **LeadObjectionInfo**
- **LeadPersonalDetailsDocumentInfo**
- **LeadPersonalDetailsInfo**
- **LeadRequestAutoRespondSettingsInfo**
- **LeadRequestAutoRespondSettingsMappingInfo**
- **LeadRequestAutoRespondSettingsTriggerTypeInfo**
- **LeadServiceInfo**
- **LeadSourceTimeframeSettingsInfo**
- **LeadThreadInfo**
- **LeadVehicleAccessoryInfo**
- **LeadVehicleCalculationInfo**
- **LeadVehicleDocmosis**
- **LeadVehicleDocumentInfo**
- **LeadVehicleInfo**
- **LeasingDataDocmosis**
- **LocationDocmosis**
- **LocationFacebookSettings**
- **MasterDataCityInfo**
- **MasterDataColourInfo**
- **MasterDataCountryInfo**
- **MasterDataEnumsDataFormat**
- **MasterDataEnumsExportChannel**
- **MasterDataEnumsExportProperty**
- **MasterDataEnumsOptionCategory**
- **MasterDataEnumsPushType**
- **MasterDataEquipmentCategoryInfo**
- **MasterDataEquipmentCategoryType**
- **MasterDataExportMappingItemInfo**
- **MasterDataRimInfo**
- **MasterDataTagInfo**
- **MasterDataTaxonomyCarlineInfo**
- **MasterDataTaxonomyGenerationInfo**
- **MasterDataTaxonomyMakeInfo**
- **MasterDataTaxonomyModelInfo**
- **MasterDataTaxonomyModellineInfo**
- **MasterDataTaxonomyMotorizationInfo**
- **MasterDataTaxonomyOptionInfo**
- **MasterDataTaxonomyOptionPackageInfo**
- **MasterDataUpholsteryInfo**
- **MasterDataVehicleConfigurationInfo**
- **ModelAccessory**
- **ModelActivity**
- **ModelCallRedirectSettings**
- **ModelChatMessage**
- **ModelDeliveryBox**
- **ModelGridView**
- **ModelLead**
- **ModelLeadAutoAssignSettings**
- **ModelLeadObjection**
- **ModelLeadPersonalDetails**
- **ModelLeadPersonalDetailsDocument**
- **ModelLeadService**
- **ModelLeadSourceTimeframeSettings**
- **ModelLeadTag**
- **ModelLeadVehicle**
- **ModelLeadVehicleAccessory**
- **ModelLeadVehicleCalculation**
- **ModelLeadVehicleDocument**
- **ModelObjection**
- **ModelPriceSticker**
- **ModelResource**
- **ModelRole**
- **ModelService**
- **ModelTestDriveLog**
- **ModelUser**
- **ModelUserRole**
- **NotificationInfo**
- **ObjectionInfo**
- **OfferRequestInfo**
- **PagedResultlessThanAccessoryInfogreaterThan**
- **PagedResultlessThanActivityInfogreaterThan**
- **PagedResultlessThanAdditionalServiceInfogreaterThan**
- **PagedResultlessThanApplicationClientInfogreaterThan**
- **PagedResultlessThanCalculationRuleInfogreaterThan**
- **PagedResultlessThanCallRedirectSettingsInfogreaterThan**
- **PagedResultlessThanCampaignInfogreaterThan**
- **PagedResultlessThanCarlineInfogreaterThan**
- **PagedResultlessThanConsentTextDatagreaterThan**
- **PagedResultlessThanCustomerInfogreaterThan**
- **PagedResultlessThanDeliveryBoxInfogreaterThan**
- **PagedResultlessThanEntitygreaterThan**
- **PagedResultlessThanExportLogInfogreaterThan**
- **PagedResultlessThanExportedInfogreaterThan**
- **PagedResultlessThanFullLeadVehicleDatagreaterThan**
- **PagedResultlessThanGenerationInfogreaterThan**
- **PagedResultlessThanImportLogInfogreaterThan**
- **PagedResultlessThanLeadAutoAssignSettingsInfogreaterThan**
- **PagedResultlessThanLeadDatagreaterThan**
- **PagedResultlessThanLeadExportLogInfogreaterThan**
- **PagedResultlessThanLeadSourceTimeframeSettingsInfogreaterThan**
- **PagedResultlessThanLocationInfogreaterThan**
- **PagedResultlessThanMakeInfogreaterThan**
- **PagedResultlessThanMatrixRuleInfogreaterThan**
- **PagedResultlessThanModelInfogreaterThan**
- **PagedResultlessThanModellineInfogreaterThan**
- **PagedResultlessThanObjectionInfogreaterThan**
- **PagedResultlessThanPortalTextDatagreaterThan**
- **PagedResultlessThanPriceMatrixInfogreaterThan**
- **PagedResultlessThanPriceStickergreaterThan**
- **PagedResultlessThanProductInfogreaterThan**
- **PagedResultlessThanResourceBookingInfogreaterThan**
- **PagedResultlessThanServiceTypeInfogreaterThan**
- **PagedResultlessThanServiceViewgreaterThan**
- **PagedResultlessThanStaticDocumentInfogreaterThan**
- **PagedResultlessThanTemplategreaterThan**
- **PagedResultlessThanUserInfogreaterThan**
- **PagedResultlessThanVehicleBookingInfogreaterThan**
- **PagedResultlessThanVehicleInfogreaterThan**
- **ParsingSetting**
- **ParsingSource**
- **PictureData**
- **PictureDataContainer**
- **PlanAppointmentSettingsInfo**
- **PriceStickerInfo**
- **PriceStickersConfigInfo**
- **ProcessSettings**
- **ProductInfo**
- **PushData**
- **ReassignRequest**
- **ReassignResponse**
- **RedirectData**
- **RegisterToEventData**
- **ReportData**
- **ReportGroup**
- **ReportGroupItem**
- **RequestContactData**
- **RequestContactResponse**
- **RequestSellData**
- **ResourceBookingInfo**
- **RoleInfo**
- **SalesPersonDocmosis**
- **SecurityCodeInfo**
- **ServiceDocmosis**
- **ServiceInfo**
- **ServiceView**
- **ServicesDataDocmosis**
- **ShowroomManuelDevice**
- **ShowroomShowroomConfiguration**
- **ShowroomTaggedImage**
- **ShowroomZone**
- **StaticDocumentInfo**
- **SubscriptionData**
- **SystemTimeSpan**
- **TestDriveLogInfo**
- **TimeSlot**
- **ToolsCsvWriterCsvExportEntity**
- **ToolsCsvWriterCsvExportFilerItem**
- **ToolsCsvWriterCsvExportParameters**
- **ToolsFailureResponse**
- **TwilioBillingCategory**
- **TwilioBillingInfo**
- **TwilioSubResource**
- **UserInfo**
- **UserTimeSlot**
- **UserTimeSlots**
- **VehicleConfigurationDataDocmosis**
- **VehicleDataAboPackageInfo**
- **VehicleDataAdditionalServiceInfo**
- **VehicleDataCalculationRuleInfo**
- **VehicleDataCampaignInfo**
- **VehicleDataEnumsCalculationRuleType**
- **VehicleDataEnumsCalculationRuleVehicleStatus**
- **VehicleDataEnumsCampaignDefaultPrice**
- **VehicleDataEnumsCampaignState**
- **VehicleDataEnumsEmissionsSticker**
- **VehicleDataEnumsImportItemType**
- **VehicleDataEnumsMatrixState**
- **VehicleDataEnumsOrderStatus**
- **VehicleDataEnumsProcessTypeOfPayment**
- **VehicleDataEnumsSalesStatus**
- **VehicleDataEnumsServiceCalculationType**
- **VehicleDataEnumsVehicleBookingState**
- **VehicleDataEnumsVehicleBookingType**
- **VehicleDataEnumsVehicleStatus**
- **VehicleDataExportErrorInfo**
- **VehicleDataExportLogInfo**
- **VehicleDataExportedInfo**
- **VehicleDataHyundaiHyundaiDownload**
- **VehicleDataHyundaiHyundaiEquipmentItemSubCategory**
- **VehicleDataHyundaiHyundaiModel**
- **VehicleDataHyundaiHyundaiMotor**
- **VehicleDataHyundaiHyundaiSellCode**
- **VehicleDataHyundaiHyundaiTrimMotors**
- **VehicleDataHyundaiHyundaiUpselling**
- **VehicleDataHyundaiHyundaiVehicleImportParameters**
- **VehicleDataHyundaiHyundayEquipmentItemsSubCategories**
- **VehicleDataImportErrorInfo**
- **VehicleDataImportLogInfo**
- **VehicleDataInstaVidAuthenticationResult**
- **VehicleDataInstaVidStockItemData**
- **VehicleDataInstaVidVehicleInfo**
- **VehicleDataLeasingCalculation**
- **VehicleDataLeasingMileagePricesInfo**
- **VehicleDataLeasingPeriodCalculation**
- **VehicleDataLeasingPeriodPricesInfo**
- **VehicleDataMatrixCellInfo**
- **VehicleDataMatrixPeriodInfo**
- **VehicleDataMatrixRuleInfo**
- **VehicleDataOptionPackageInfo**
- **VehicleDataPriceMatrixInfo**
- **VehicleDataServiceTypeInfo**
- **VehicleDataVehicleBookingInfo**
- **VehicleDataVehicleBookingResourceInfo**
- **VehicleDataVehicleInfo**
- **VehicleDataVehicleOptionInfo**
- **VehicleDataWarningInfo**
- **VehicleDocmosis**
- **VehicleOnlineProcessSettingsInfo**
- **VehicleSettingsInfo**
- **VideoRoomInfo**

## Requests

- **API.AboMatrix**
	- **GetApiAboMatrix**: GET `/api/abomatrix`
	- **GetApiAboMatrixById**: GET `/api/abomatrix/{id}`
	- **PatchApiAboMatrixActivateById**: PATCH `/api/abomatrix/activate/{id}`
	- **PatchApiAboMatrixArchiveById**: PATCH `/api/abomatrix/archive/{id}`
	- **PostApiAboMatrix**: POST `/api/abomatrix`
	- **PostApiAboMatrixChildofById**: POST `/api/abomatrix/childof/{id}`
	- **PutApiAboMatrixById**: PUT `/api/abomatrix/{id}`
- **API.Accessory**
	- **DeleteApiAccessoryById**: DELETE `/api/accessory/{id}`
	- **GetApiAccessory**: GET `/api/accessory`
	- **GetApiAccessoryById**: GET `/api/accessory/{id}`
	- **PostApiAccessory**: POST `/api/accessory`
- **API.Activity**
	- **GetApiActivity**: GET `/api/activity`
	- **GetApiActivityListForReceptionApp**: GET `/api/activity/listforreceptionapp`
	- **GetApiActivityAll**: GET `/api/activity/all`
	- **GetApiActivityList**: GET `/api/activity/list`
	- **GetApiActivityRenderonlyByIdByTemplateNameByOutputNameByOutputFormat**: GET `/api/activity/renderonly/{id}/{templatename}/{outputname}/{outputformat}`
	- **GetApiActivitySearch**: GET `/api/activity/search`
	- **GetApiActivityById**: GET `/api/activity/{id}`
	- **PostApiActivity**: POST `/api/activity`
	- **PostApiActivityAll**: POST `/api/activity/all`
	- **PostApiActivityLocosoft**: POST `/api/activity/locosoft`
	- **PostApiActivityRenderById**: POST `/api/activity/render/{id}`
	- **PostApiActivityByActivityIdShowToByUserId**: POST `/api/activity/{activityid}/show-to/{userid}`
	- **PutApiActivityById**: PUT `/api/activity/{id}`
- **API.AdditionalService**
	- **GetApiAdditionalService**: GET `/api/additionalservice`
	- **GetApiAdditionalServiceVehicleByVehicleId**: GET `/api/additionalservice/vehicle/{vehicleid}`
	- **GetApiAdditionalServiceWarranties**: GET `/api/additionalservice/warranties`
	- **GetApiAdditionalServiceById**: GET `/api/additionalservice/{id}`
	- **PostApiAdditionalService**: POST `/api/additionalservice`
	- **PutApiAdditionalServiceDeactivateById**: PUT `/api/additionalservice/deactivate/{id}`
- **API.Alert**
	- **PostApiAlert**: POST `/api/alert`
- **API.Analytics**
	- **GetApiAnalyticsActivities**: GET `/api/analytics/activities`
	- **GetApiAnalyticsCapacities**: GET `/api/analytics/capacities`
	- **GetApiAnalyticsLeads**: GET `/api/analytics/leads`
- **API.ApplicationClient**
	- **DeleteApiApplicationClientSecretBySecretId**: DELETE `/api/applicationclient/secret/{secretid}`
	- **DeleteApiApplicationClientById**: DELETE `/api/applicationclient/{id}`
	- **GetApiApplicationClient**: GET `/api/applicationclient`
	- **PostApiApplicationClient**: POST `/api/applicationclient`
	- **PostApiApplicationClientByIdSecret**: POST `/api/applicationclient/{id}/secret`
	- **PutApiApplicationClientById**: PUT `/api/applicationclient/{id}`
- **API.Auth**
	- **GetApiAuthFacebookCode**: GET `/api/auth/facebook-code`
	- **PostApiAuth**: POST `/api/auth`
	- **PostApiAuthRefreshToken**: POST `/api/auth/refreshtoken`
	- **PostApiAuthChangePasswordByToken**: POST `/api/auth/changepassword/{token}`
	- **PostApiAuthResetPassword**: POST `/api/auth/resetpassword`
- **API.Avatar**
	- **GetApiAvatarHistoryByDates**: GET `/api/avatar/historybydates`
	- **GetApiAvatarById**: GET `/api/avatar/{id}`
	- **GetApiAvatarByIdEvents**: GET `/api/avatar/{id}/events`
	- **GetApiAvatarByIdTags**: GET `/api/avatar/{id}/tags`
- **API.BdcActivity**
	- **GetApiBdcActivity**: GET `/api/bdcactivity`
	- **GetApiBdcActivityByLocationId**: GET `/api/bdcactivity/{locationid}`
	- **GetApiBdcActivityByLocationIdByActivityId**: GET `/api/bdcactivity/{locationid}/{activityid}`
	- **PostApiBdcActivityRedirectCall**: POST `/api/bdcactivity/redirectcall`
	- **PutApiBdcActivitySaveOrUpdateBeforeOutgoingCall**: PUT `/api/bdcactivity/saveorupdatebeforeoutgoingcall`
	- **PutApiBdcActivityByLocationId**: PUT `/api/bdcactivity/{locationid}`
- **API.BdcLead**
	- **GetApiBdcLeadByLocationIdByLeadId**: GET `/api/bdclead/{locationid}/{leadid}`
- **API.CalculationRule**
	- **GetApiCalculationRule**: GET `/api/calculationrule`
	- **GetApiCalculationRuleById**: GET `/api/calculationrule/{id}`
	- **PostApiCalculationRule**: POST `/api/calculationrule`
	- **PutApiCalculationRuleDeactivateById**: PUT `/api/calculationrule/deactivate/{id}`
- **API.Campaign**
	- **DeleteApiCampaignByIdVehicleByVehicleId**: DELETE `/api/campaign/{id}/vehicle/{vehicleid}`
	- **GetApiCampaign**: GET `/api/campaign`
	- **GetApiCampaignByVehicleById**: GET `/api/campaign/by-vehicle/{id}`
	- **GetApiCampaignById**: GET `/api/campaign/{id}`
	- **PostApiCampaign**: POST `/api/campaign`
	- **PostApiCampaignByIdVehicleByVehicleId**: POST `/api/campaign/{id}/vehicle/{vehicleid}`
	- **PutApiCampaignById**: PUT `/api/campaign/{id}`
- **API.Chat**
	- **GetApiChatConversationByLeadIdAll**: GET `/api/chat/conversation/{leadid}/all`
	- **GetApiChatPhoneNumbers**: GET `/api/chat/phonenumbers`
	- **GetApiChatTemplates**: GET `/api/chat/templates`
	- **GetApiChatByLeadId**: GET `/api/chat/{leadid}`
	- **PostApiChat**: POST `/api/chat`
	- **PostApiChatConversationByLeadId**: POST `/api/chat/conversation/{leadid}`
	- **PostApiChatMessageByLeadId**: POST `/api/chat/message/{leadid}`
	- **PostApiChatTemplatesByLeadId**: POST `/api/chat/templates/{leadid}`
- **API.CommunicationEvent**
	- **GetApiCommunicationEvent**: GET `/api/communicationevent`
	- **PostApiCommunicationEventSendCarCheckNotification**: POST `/api/communicationevent/sendcarchecknotification`
	- **PostApiCommunicationEventSendSecurityCode**: POST `/api/communicationevent/sendsecuritycode`
	- **PostApiCommunicationEventDynamic**: POST `/api/communicationevent/dynamic`
	- **PostApiCommunicationEventRender**: POST `/api/communicationevent/render`
	- **PostApiCommunicationEventRendersent**: POST `/api/communicationevent/rendersent`
	- **PutApiCommunicationEventByEventCode**: PUT `/api/communicationevent/{eventcode}`
- **API.Customer**
	- **GetApiCustomer**: GET `/api/customer`
	- **GetApiCustomerByIdAssignedto**: GET `/api/customer/{id}/assignedto`
	- **PostApiCustomer**: POST `/api/customer`
	- **PutApiCustomerById**: PUT `/api/customer/{id}`
- **API.DeliveryBox**
	- **DeleteApiDeliveryBoxById**: DELETE `/api/deliverybox/{id}`
	- **GetApiDeliveryBox**: GET `/api/deliverybox`
	- **GetApiDeliveryBoxDayByBoxIdByUserId**: GET `/api/deliverybox/day/{boxid}/{userid}`
	- **GetApiDeliveryBoxWithBookings**: GET `/api/deliverybox/with-bookings`
	- **GetApiDeliveryBoxById**: GET `/api/deliverybox/{id}`
	- **PostApiDeliveryBox**: POST `/api/deliverybox`
	- **PutApiDeliveryBoxById**: PUT `/api/deliverybox/{id}`
- **API.DeviceBinding**
	- **DeleteApiDeviceBindingByAddress**: DELETE `/api/devicebinding/{address}`
	- **GetApiDeviceBinding**: GET `/api/devicebinding`
	- **PostApiDeviceBinding**: POST `/api/devicebinding`
- **API.DocmosisTemplate**
	- **GetApiDocmosisTemplate**: GET `/api/docmosistemplate`
	- **GetApiDocmosisTemplateActivityById**: GET `/api/docmosistemplate/activity/{id}`
	- **GetApiDocmosisTemplateLeadvehicleById**: GET `/api/docmosistemplate/leadvehicle/{id}`
	- **GetApiDocmosisTemplateVehicleById**: GET `/api/docmosistemplate/vehicle/{id}`
	- **PostApiDocmosisTemplateRender**: POST `/api/docmosistemplate/render`
- **API.EmailParsingSettings**
	- **GetApiEmailParsingSettings**: GET `/api/emailparsingsettings`
	- **GetApiEmailParsingSettingsSources**: GET `/api/emailparsingsettings/sources`
	- **PostApiEmailParsingSettings**: POST `/api/emailparsingsettings`
	- **PutApiEmailParsingSettings**: PUT `/api/emailparsingsettings`
- **API.Entity**
	- **DeleteApiEntityById**: DELETE `/api/entity/{id}`
	- **GetApiEntity**: GET `/api/entity`
	- **GetApiEntitySample**: GET `/api/entity/sample`
	- **GetApiEntityById**: GET `/api/entity/{id}`
	- **PostApiEntity**: POST `/api/entity`
	- **PutApiEntityById**: PUT `/api/entity/{id}`
- **API.Export**
	- **GetApiExportChannels**: GET `/api/export/channels`
	- **GetApiExportCsvEntities**: GET `/api/export/csv/entities`
	- **GetApiExportCsvFieldsByEntityName**: GET `/api/export/csv/fields/{entityname}`
	- **PostApiExport**: POST `/api/export`
	- **PostApiExportCsv**: POST `/api/export/csv`
- **API.Exported**
	- **GetApiExported**: GET `/api/exported`
	- **GetApiExportedLeads**: GET `/api/exported/leads`
	- **GetApiExportedMobileapifails**: GET `/api/exported/mobileapifails`
- **API.ExportLog**
	- **GetApiExportLog**: GET `/api/exportlog`
- **API.GridView**
	- **DeleteApiGridViewById**: DELETE `/api/gridview/{id}`
	- **GetApiGridViewByGridId**: GET `/api/gridview/{gridid}`
	- **PostApiGridView**: POST `/api/gridview`
	- **PutApiGridViewById**: PUT `/api/gridview/{id}`
- **API.Import**
	- **PostApiImportCarmera**: POST `/api/import/carmera`
	- **PostApiImportEntityLead**: POST `/api/import/entity/lead`
	- **PostApiImportLeadvehicle**: POST `/api/import/leadvehicle`
	- **PostApiImportLeadvehicles**: POST `/api/import/leadvehicles`
	- **PostApiImportLocosoft**: POST `/api/import/locosoft`
	- **PostApiImportLocosoftRerun**: POST `/api/import/locosoft/rerun`
	- **PostApiImportMobilede**: POST `/api/import/mobilede`
	- **PostApiImportRerunByErrorId**: POST `/api/import/rerun/{errorid}`
	- **PostApiImportTopdrive**: POST `/api/import/topdrive`
	- **PostApiImportWalterOrders**: POST `/api/import/walter/orders`
- **API.ImportLog**
	- **GetApiImportLog**: GET `/api/importlog`
- **API.InstaVid**
	- **DeleteApiInstaVidImageByIdByName**: DELETE `/api/instavid/image/{id}/{name}`
	- **GetApiInstaVid**: GET `/api/instavid`
	- **GetApiInstaVidImageById**: GET `/api/instavid/image/{id}`
	- **GetApiInstaVidStockfeed**: GET `/api/instavid/stockfeed`
	- **PatchApiInstaVidImageByIdByName**: PATCH `/api/instavid/image/{id}/{name}`
	- **PostApiInstaVidRefreshToken**: POST `/api/instavid/refreshtoken`
	- **PostApiInstaVidImageById**: POST `/api/instavid/image/{id}`
	- **PostApiInstaVidStockitem**: POST `/api/instavid/stockitem`
- **API.Lead**
	- **DeleteApiLeadDocumentByDocId**: DELETE `/api/lead/document/{docid}`
	- **DeleteApiLeadServiceByServiceId**: DELETE `/api/lead/service/{serviceid}`
	- **DeleteApiLeadTestdrivedocumentByDocIdByDocName**: DELETE `/api/lead/testdrivedocument/{docid}/{docname}`
	- **DeleteApiLeadByLeadId**: DELETE `/api/lead/{leadid}`
	- **GetApiLead**: GET `/api/lead`
	- **GetApiLeadCities**: GET `/api/lead/cities`
	- **GetApiLeadFind**: GET `/api/lead/find`
	- **GetApiLeadPersonaldetailsByLeadId**: GET `/api/lead/personaldetails/{leadid}`
	- **GetApiLeadSearch**: GET `/api/lead/search`
	- **GetApiLeadSearchByOr**: GET `/api/lead/searchbyor`
	- **GetApiLeadWithlastactivity**: GET `/api/lead/withlastactivity`
	- **GetApiLeadById**: GET `/api/lead/{id}`
	- **GetApiLeadByIdPortalqrcode**: GET `/api/lead/{id}/portalqrcode`
	- **PatchApiLeadCloseById**: PATCH `/api/lead/close/{id}`
	- **PostApiLead**: POST `/api/lead`
	- **PostApiLeadCheckfirstvisitByLeadIdByFingerprint**: POST `/api/lead/checkfirstvisit/{leadid}/{fingerprint}`
	- **PostApiLeadFmadeSaveleadByLeadId**: POST `/api/lead/fmade/savelead/{leadid}`
	- **PostApiLeadPersonaldetails**: POST `/api/lead/personaldetails`
	- **PostApiLeadPersonaldetailsDocumentByPersonalDetailsIdOrLeadIdByName**: POST `/api/lead/personaldetails/document/{personaldetailsidorleadid}/{name}`
	- **PostApiLeadSendtoretailByLeadIdByRetailLocationId**: POST `/api/lead/sendtoretail/{leadid}/{retaillocationid}`
	- **PostApiLeadSetPipelinePhaseByKey**: POST `/api/lead/setpipelinephase/{key}`
	- **PostApiLeadWithlastactivity**: POST `/api/lead/withlastactivity`
	- **PutApiLeadPersonaldetailsById**: PUT `/api/lead/personaldetails/{id}`
	- **PutApiLeadById**: PUT `/api/lead/{id}`
- **API.LeadImport**
	- **GetApiLeadImportFacebookBusinesses**: GET `/api/leadimport/facebook/businesses`
	- **GetApiLeadImportFacebookForms**: GET `/api/leadimport/facebook/forms`
	- **GetApiLeadImportFacebookPages**: GET `/api/leadimport/facebook/pages`
	- **GetApiLeadImportFacebookWabusinesses**: GET `/api/leadimport/facebook/wabusinesses`
	- **PostApiLeadImportFacebookFormByPageId**: POST `/api/leadimport/facebook/form/{pageid}`
	- **PostApiLeadImportFacebookRegister**: POST `/api/leadimport/facebook/register`
	- **PostApiLeadImportFacebookSubscribe**: POST `/api/leadimport/facebook/subscribe`
- **API.LeadIntegration**
	- **PostApiExtLeadIntegrationAttachByMessageIdByFilename**: POST `/api/ext/leadintegration/attach/{messageid}/{filename}`
	- **PostApiExtLeadIntegrationEmail**: POST `/api/ext/leadintegration/email`
- **API.LeadVehicle**
	- **DeleteApiLeadVehicleAccessoryById**: DELETE `/api/leadvehicle/accessory/{id}`
	- **DeleteApiLeadVehicleDocumentByDocId**: DELETE `/api/leadvehicle/document/{docid}`
	- **GetApiLeadVehicle**: GET `/api/leadvehicle`
	- **GetApiLeadVehicleFullByLeadVehicleId**: GET `/api/leadvehicle/full/{leadvehicleid}`
	- **GetApiLeadVehicleRenderonlyByIdByTemplateNameByOutputNameByOutputFormatByType**: GET `/api/leadvehicle/renderonly/{id}/{templatename}/{outputname}/{outputformat}/{type}`
	- **GetApiLeadVehicleVehiclesByLeadId**: GET `/api/leadvehicle/vehicles/{leadid}`
	- **GetApiLeadVehicleByLeadId**: GET `/api/leadvehicle/{leadid}`
	- **GetApiLeadVehicleByLeadIdMaxstate**: GET `/api/leadvehicle/{leadid}/maxstate`
	- **PostApiLeadVehicle**: POST `/api/leadvehicle`
	- **PostApiLeadVehicleAccessoryByLeadVehicleId**: POST `/api/leadvehicle/accessory/{leadvehicleid}`
	- **PostApiLeadVehicleCancelOutdated**: POST `/api/leadvehicle/canceloutdated`
	- **PostApiLeadVehicleCreatevehicleByIdByVin**: POST `/api/leadvehicle/createvehicle/{id}/{vin}`
	- **PostApiLeadVehicleDocumentByLeadVehicleIdOrder**: POST `/api/leadvehicle/document/{leadvehicleid}/order`
	- **PostApiLeadVehicleDocumentByLeadVehicleIdQuote**: POST `/api/leadvehicle/document/{leadvehicleid}/quote`
	- **PostApiLeadVehicleDocumentByLeadVehicleIdByNameByPurposeByType**: POST `/api/leadvehicle/document/{leadvehicleid}/{name}/{purpose}/{type}`
	- **PostApiLeadVehicleOfferrequest**: POST `/api/leadvehicle/offerrequest`
	- **PostApiLeadVehicleRenderByIdByType**: POST `/api/leadvehicle/render/{id}/{type}`
	- **PostApiLeadVehicleByIdCancel**: POST `/api/leadvehicle/{id}/cancel`
	- **PutApiLeadVehicleById**: PUT `/api/leadvehicle/{id}`
- **API.Location**
	- **GetApiLocation**: GET `/api/location`
	- **GetApiLocationById**: GET `/api/location/{id}`
- **API.Manage**
	- **DeleteApiManageConsenttextById**: DELETE `/api/manage/consenttext/{id}`
	- **DeleteApiManageLeadsExternal**: DELETE `/api/manage/leads/external`
	- **DeleteApiManagePortaltextById**: DELETE `/api/manage/portaltext/{id}`
	- **GetApiManageConsenttextList**: GET `/api/manage/consenttext/list`
	- **GetApiManageConsenttextById**: GET `/api/manage/consenttext/{id}`
	- **GetApiManageLeadsExternal**: GET `/api/manage/leads/external`
	- **GetApiManagePortaltextList**: GET `/api/manage/portaltext/list`
	- **GetApiManagePortaltextById**: GET `/api/manage/portaltext/{id}`
	- **PostApiManageConsenttext**: POST `/api/manage/consenttext`
	- **PostApiManagePortaltext**: POST `/api/manage/portaltext`
	- **PutApiManageConsenttextById**: PUT `/api/manage/consenttext/{id}`
	- **PutApiManagePortaltextById**: PUT `/api/manage/portaltext/{id}`
- **API.MatrixRule**
	- **GetApiMatrixRule**: GET `/api/matrixrule`
	- **GetApiMatrixRuleById**: GET `/api/matrixrule/{id}`
	- **PatchApiMatrixRuleDeactivateById**: PATCH `/api/matrixrule/deactivate/{id}`
	- **PostApiMatrixRule**: POST `/api/matrixrule`
- **API.Notification**
	- **GetApiNotificationForuserByUserId**: GET `/api/notification/foruser/{userid}`
	- **PutApiNotificationMarkasreadById**: PUT `/api/notification/markasread/{id}`
	- **PutApiNotificationMarkasunreadById**: PUT `/api/notification/markasunread/{id}`
- **API.Objection**
	- **DeleteApiObjectionById**: DELETE `/api/objection/{id}`
	- **GetApiObjection**: GET `/api/objection`
	- **GetApiObjectionById**: GET `/api/objection/{id}`
	- **PostApiObjection**: POST `/api/objection`
	- **PutApiObjectionById**: PUT `/api/objection/{id}`
- **API.Operation**
	- **PutApiOperationByActivityId**: PUT `/api/operation/{activityid}`
- **API.PriceMatrix**
	- **GetApiPriceMatrix**: GET `/api/pricematrix`
	- **GetApiPriceMatrixCalculateLeasingByVehicleIdByPrepaymentPercentByVarioByRuleId**: GET `/api/pricematrix/calculate/leasing/{vehicleid}/{prepaymentpercent}/{vario}/{ruleid}`
	- **GetApiPriceMatrixById**: GET `/api/pricematrix/{id}`
	- **PatchApiPriceMatrixActivateById**: PATCH `/api/pricematrix/activate/{id}`
	- **PatchApiPriceMatrixArchiveById**: PATCH `/api/pricematrix/archive/{id}`
	- **PostApiPriceMatrix**: POST `/api/pricematrix`
	- **PostApiPriceMatrixChildofById**: POST `/api/pricematrix/childof/{id}`
	- **PutApiPriceMatrixById**: PUT `/api/pricematrix/{id}`
- **API.PriceSticker**
	- **GetApiPriceSticker**: GET `/api/pricesticker`
	- **GetApiPriceStickerConfig**: GET `/api/pricesticker/config`
	- **GetApiPriceStickerList**: GET `/api/pricesticker/list`
	- **GetApiPriceStickerById**: GET `/api/pricesticker/{id}`
	- **PostApiPriceSticker**: POST `/api/pricesticker`
	- **PutApiPriceStickerById**: PUT `/api/pricesticker/{id}`
- **API.Product**
	- **GetApiProduct**: GET `/api/product`
- **API.Push**
	- **PostApiPushNotifyActivityChangedByLocationId**: POST `/api/push/notifyactivitychanged/{locationid}`
	- **PostApiPushNotifyLeadChangedByLocationId**: POST `/api/push/notifyleadchanged/{locationid}`
	- **PostApiPushById**: POST `/api/push/{id}`
- **API.Redirect**
	- **PostApiRedirect**: POST `/api/redirect`
- **API.RemoteConsulting**
	- **GetApiRemoteConsultingGotoByCaseId**: GET `/api/remoteconsulting/goto/{caseid}`
	- **GetApiRemoteConsultingByCaseId**: GET `/api/remoteconsulting/{caseid}`
	- **PostApiRemoteConsultingStartByLeadId**: POST `/api/remoteconsulting/start/{leadid}`
- **API.Report**
	- **GetApiReport**: GET `/api/report`
	- **GetApiReportDaily0Nooffers**: GET `/api/report/daily/0/nooffers`
	- **GetApiReportDaily0NooffersList**: GET `/api/report/daily/0/nooffers/list`
	- **GetApiReportDaily5Overdued**: GET `/api/report/daily/5/overdued`
	- **GetApiReportDailyLeadsByNewleadsByOverdued**: GET `/api/report/daily/leads/{newleads}/{overdued}`
	- **GetApiReportDailyLeadsByNewleadsByOverduedList**: GET `/api/report/daily/leads/{newleads}/{overdued}/list`
	- **GetApiReportDailyOrdersProvided**: GET `/api/report/daily/orders/provided`
	- **GetApiReportDailyOrdersProvidedList**: GET `/api/report/daily/orders/provided/list`
	- **GetApiReportDailyByTypeActiverequests**: GET `/api/report/daily/{type}/activerequests`
	- **GetApiReportDailyByTypeOverdued**: GET `/api/report/daily/{type}/overdued`
	- **GetApiReportDailyByTypePlanned**: GET `/api/report/daily/{type}/planned`
- **API.RequestContact**
	- **GetApiRequestContactScript**: GET `/api/requestcontact/script`
	- **PostApiRequestContact**: POST `/api/requestcontact`
	- **PostApiRequestContactAbo**: POST `/api/requestcontact/abo`
	- **PostApiRequestContactRegister**: POST `/api/requestcontact/register`
	- **PostApiRequestContactStickerByZone**: POST `/api/requestcontact/sticker/{zone}`
- **API.ResourceBooking**
	- **DeleteApiResourceBookingById**: DELETE `/api/resourcebooking/{id}`
	- **GetApiResourceBooking**: GET `/api/resourcebooking`
	- **GetApiResourceBookingById**: GET `/api/resourcebooking/{id}`
	- **PostApiResourceBooking**: POST `/api/resourcebooking`
	- **PutApiResourceBookingById**: PUT `/api/resourcebooking/{id}`
- **API.SecureStorage**
	- **DeleteApiSecureStorageByEntityByIdByName**: DELETE `/api/securestorage/{entity}/{id}/{name}`
	- **GetApiSecureStorageByEntityById**: GET `/api/securestorage/{entity}/{id}`
	- **GetApiSecureStorageByEntityByIdByName**: GET `/api/securestorage/{entity}/{id}/{name}`
	- **GetApiSecureStorageByEntityByIdByNameBySize**: GET `/api/securestorage/{entity}/{id}/{name}/{size}`
	- **PostApiSecureStorageByEntityByIdByName**: POST `/api/securestorage/{entity}/{id}/{name}`
- **API.Service**
	- **DeleteApiServiceTypeById**: DELETE `/api/service/type/{id}`
	- **DeleteApiServiceById**: DELETE `/api/service/{id}`
	- **GetApiService**: GET `/api/service`
	- **GetApiServiceType**: GET `/api/service/type`
	- **GetApiServiceTypeById**: GET `/api/service/type/{id}`
	- **GetApiServiceTypeByIdImageBySize**: GET `/api/service/type/{id}/image/{size}`
	- **GetApiServiceById**: GET `/api/service/{id}`
	- **PostApiService**: POST `/api/service`
	- **PostApiServiceType**: POST `/api/service/type`
	- **PutApiServiceTypeById**: PUT `/api/service/type/{id}`
	- **PutApiServiceTypeByIdImage**: PUT `/api/service/type/{id}/image`
	- **PutApiServiceById**: PUT `/api/service/{id}`
- **API.Settings**
	- **DeleteApiSettingsAutoassignById**: DELETE `/api/settings/autoassign/{id}`
	- **DeleteApiSettingsCallredirectById**: DELETE `/api/settings/callredirect/{id}`
	- **DeleteApiSettingsDocumentById**: DELETE `/api/settings/document/{id}`
	- **DeleteApiSettingsLeadrequestautorespondmappingByMappingId**: DELETE `/api/settings/leadrequestautorespondmapping/{mappingid}`
	- **DeleteApiSettingsLeadsourcetimeframeById**: DELETE `/api/settings/leadsourcetimeframe/{id}`
	- **DeleteApiSettingsOnlineprocessById**: DELETE `/api/settings/onlineprocess/{id}`
	- **GetApiSettings**: GET `/api/settings`
	- **GetApiSettingsAutoassign**: GET `/api/settings/autoassign`
	- **GetApiSettingsAutoassignById**: GET `/api/settings/autoassign/{id}`
	- **GetApiSettingsCallredirect**: GET `/api/settings/callredirect`
	- **GetApiSettingsCallredirectById**: GET `/api/settings/callredirect/{id}`
	- **GetApiSettingsCategoriesByType**: GET `/api/settings/categories/{type}`
	- **GetApiSettingsCountry**: GET `/api/settings/country`
	- **GetApiSettingsDocuments**: GET `/api/settings/documents`
	- **GetApiSettingsFacebook**: GET `/api/settings/facebook`
	- **GetApiSettingsLeadrequestautorespondmapping**: GET `/api/settings/leadrequestautorespondmapping`
	- **GetApiSettingsLeadsourcetimeframe**: GET `/api/settings/leadsourcetimeframe`
	- **GetApiSettingsLeadsourcetimeframeById**: GET `/api/settings/leadsourcetimeframe/{id}`
	- **GetApiSettingsPlanappointment**: GET `/api/settings/planappointment`
	- **GetApiSettingsProcess**: GET `/api/settings/process`
	- **GetApiSettingsVehicle**: GET `/api/settings/vehicle`
	- **GetApiSettingsVehicleMissingMappings**: GET `/api/settings/vehicle/missingmappings`
	- **PostApiSettingsAutoassign**: POST `/api/settings/autoassign`
	- **PostApiSettingsCallredirect**: POST `/api/settings/callredirect`
	- **PostApiSettingsCountry**: POST `/api/settings/country`
	- **PostApiSettingsDocument**: POST `/api/settings/document`
	- **PostApiSettingsDocumentByIdContent**: POST `/api/settings/document/{id}/content`
	- **PostApiSettingsLeadrequestautorespondmapping**: POST `/api/settings/leadrequestautorespondmapping`
	- **PostApiSettingsLeadsourcetimeframe**: POST `/api/settings/leadsourcetimeframe`
	- **PostApiSettingsOnlineprocess**: POST `/api/settings/onlineprocess`
	- **PutApiSettingsAutoassign**: PUT `/api/settings/autoassign`
	- **PutApiSettingsCallredirect**: PUT `/api/settings/callredirect`
	- **PutApiSettingsDocument**: PUT `/api/settings/document`
	- **PutApiSettingsLeadsourcetimeframe**: PUT `/api/settings/leadsourcetimeframe`
	- **PutApiSettingsOnlineprocess**: PUT `/api/settings/onlineprocess`
	- **PutApiSettingsProcess**: PUT `/api/settings/process`
	- **PutApiSettingsVehicle**: PUT `/api/settings/vehicle`
- **API.Showroom**
	- **GetApiShowroom**: GET `/api/showroom`
	- **PostApiShowroom**: POST `/api/showroom`
- **API.Storage**
	- **DeleteApiStorageVehicleImageByIdByName**: DELETE `/api/storage/vehicle/image/{id}/{name}`
	- **DeleteApiStorageByEntityByIdByName**: DELETE `/api/storage/{entity}/{id}/{name}`
	- **GetApiStorageRaw**: GET `/api/storage/raw`
	- **GetApiStorageByEntityById**: GET `/api/storage/{entity}/{id}`
	- **GetApiStorageByEntityByIdByName**: GET `/api/storage/{entity}/{id}/{name}`
	- **GetApiStorageByEntityByIdByNameBySize**: GET `/api/storage/{entity}/{id}/{name}/{size}`
	- **PostApiStorageVehicleImageById**: POST `/api/storage/vehicle/image/{id}`
	- **PostApiStorageByEntityByIdByName**: POST `/api/storage/{entity}/{id}/{name}`
- **API.Tag**
	- **GetApiTagFindByTemplate**: GET `/api/tag/find/{template}`
	- **GetApiTagResolve**: GET `/api/tag/resolve`
	- **GetApiTagById**: GET `/api/tag/{id}`
	- **PostApiTagResurect**: POST `/api/tag/resurect`
- **API.Taxonomy**
	- **GetApiTaxonomyCarline**: GET `/api/taxonomy/carline`
	- **GetApiTaxonomyCarlineById**: GET `/api/taxonomy/carline/{id}`
	- **GetApiTaxonomyGeneration**: GET `/api/taxonomy/generation`
	- **GetApiTaxonomyGenerationById**: GET `/api/taxonomy/generation/{id}`
	- **GetApiTaxonomyMake**: GET `/api/taxonomy/make`
	- **GetApiTaxonomyMakeById**: GET `/api/taxonomy/make/{id}`
	- **GetApiTaxonomyModel**: GET `/api/taxonomy/model`
	- **GetApiTaxonomyModelById**: GET `/api/taxonomy/model/{id}`
	- **GetApiTaxonomyModelline**: GET `/api/taxonomy/modelline`
	- **GetApiTaxonomyModellineById**: GET `/api/taxonomy/modelline/{id}`
	- **GetApiTaxonomyModellineByIdMotorization**: GET `/api/taxonomy/modelline/{id}/motorization`
- **API.Template**
	- **DeleteApiTemplateById**: DELETE `/api/template/{id}`
	- **GetApiTemplate**: GET `/api/template`
	- **GetApiTemplateLinkByType**: GET `/api/template/link/{type}`
	- **GetApiTemplateById**: GET `/api/template/{id}`
	- **PostApiTemplate**: POST `/api/template`
	- **PutApiTemplateById**: PUT `/api/template/{id}`
- **API.Test**
	- **GetApiTest**: GET `/api/test`
	- **GetApiTestCallAmdByPhoneNo**: GET `/api/test/call/amd/{phoneno}`
- **API.TimeSlot**
	- **GetApiTimeSlot**: GET `/api/timeslot`
	- **GetApiTimeSlotAvailableSlots**: GET `/api/timeslot/availableslots`
	- **GetApiTimeSlotDatesUsersSlots**: GET `/api/timeslot/datesusersslots`
	- **GetApiTimeSlotDeliverySlots**: GET `/api/timeslot/deliveryslots`
	- **GetApiTimeSlotFirstAvailableSlot**: GET `/api/timeslot/firstavailableslot`
	- **GetApiTimeSlotHolidays**: GET `/api/timeslot/holidays`
	- **GetApiTimeSlotUsersSlots**: GET `/api/timeslot/usersslots`
- **API.Token**
	- **GetApiToken**: GET `/api/token`
	- **GetApiTokenInternal**: GET `/api/token/internal`
	- **GetApiTokenVideoByActivityId**: GET `/api/token/video/{activityid}`
	- **GetApiTokenById**: GET `/api/token/{id}`
- **API.TradeIn**
	- **GetApiTradeInCaseDeeplinkByRemoteServiceCaseId**: GET `/api/tradein/case/deeplink/{remoteservicecaseid}`
	- **GetApiTradeInCaseByLeadId**: GET `/api/tradein/case/{leadid}`
	- **GetApiTradeInCaseByLeadIdFull**: GET `/api/tradein/case/{leadid}/full`
	- **GetApiTradeInCaseByLeadIdValuation**: GET `/api/tradein/case/{leadid}/valuation`
	- **GetApiTradeInCaseByLeadIdValuationOverview**: GET `/api/tradein/case/{leadid}/valuation/overview`
	- **GetApiTradeInCaseByLeadIdValuationByValuationId**: GET `/api/tradein/case/{leadid}/valuation/{valuationid}`
	- **GetApiTradeInCaseByLeadIdVehicle**: GET `/api/tradein/case/{leadid}/vehicle`
	- **GetApiTradeInGotoByCaseId**: GET `/api/tradein/goto/{caseid}`
	- **GetApiTradeInIsActive**: GET `/api/tradein/isactive`
	- **GetApiTradeInResourceByResourceIdContent**: GET `/api/tradein/resource/{resourceid}/content`
	- **PostApiTradeInCaseCreatersccaseByTradeInCaseId**: POST `/api/tradein/case/creatersccase/{tradeincaseid}`
	- **PostApiTradeInStartByLeadId**: POST `/api/tradein/start/{leadid}`
	- **PutApiTradeInCaseByLeadIdStatusByStatus**: PUT `/api/tradein/case/{leadid}/status/{status}`
- **API.TwilioData**
	- **GetApiTwilioDataBillingInfo**: GET `/api/twiliodata/billinginfo`
- **API.UserAvailability**
	- **GetApiUserAvailability**: GET `/api/useravailability`
	- **GetApiUserAvailabilityList**: GET `/api/useravailability/list`
	- **PatchApiUserAvailabilityById**: PATCH `/api/useravailability/{id}`
	- **PutApiUserAvailability**: PUT `/api/useravailability`
- **API.UserData**
	- **GetApiUserData**: GET `/api/userdata`
	- **GetApiUserDataFindByTemplate**: GET `/api/userdata/find/{template}`
	- **GetApiUserDataMe**: GET `/api/userdata/me`
	- **GetApiUserDataRoles**: GET `/api/userdata/roles`
	- **GetApiUserDataById**: GET `/api/userdata/{id}`
	- **PatchApiUserDataMeLocaleByLocale**: PATCH `/api/userdata/me/locale/{locale}`
	- **PostApiUserData**: POST `/api/userdata`
	- **PostApiUserDataReassign**: POST `/api/userdata/reassign`
	- **PostApiUserDataSync**: POST `/api/userdata/sync`
	- **PutApiUserDataById**: PUT `/api/userdata/{id}`
- **API.Vehicle**
	- **DeleteApiVehicleByIdImages**: DELETE `/api/vehicle/{id}/images`
	- **GetApiVehicleActivechannels**: GET `/api/vehicle/activechannels`
	- **GetApiVehicleDetailsVinByVin**: GET `/api/vehicle/details/vin/{vin}`
	- **GetApiVehicleHyundaiAllmodels**: GET `/api/vehicle/hyundai/allmodels`
	- **GetApiVehicleHyundaiModelByModelIdGenByModelGenerationBodyByBodyId**: GET `/api/vehicle/hyundai/model/{modelid}/gen/{modelgeneration}/body/{bodyid}`
	- **GetApiVehicleList**: GET `/api/vehicle/list`
	- **GetApiVehicleListFull**: GET `/api/vehicle/list/full`
	- **GetApiVehicleResolve**: GET `/api/vehicle/resolve`
	- **GetApiVehicleTaxonomyTypes**: GET `/api/vehicle/taxonomy/types`
	- **GetApiVehicleTaxonomyValues**: GET `/api/vehicle/taxonomy/values`
	- **GetApiVehicleTaxonomyValuesVehicle**: GET `/api/vehicle/taxonomy/values/vehicle`
	- **GetApiVehicleByCodeAsVehicle**: GET `/api/vehicle/{code}/as-vehicle`
	- **GetApiVehicleById**: GET `/api/vehicle/{id}`
	- **GetApiVehicleByIdPortalqrcode**: GET `/api/vehicle/{id}/portalqrcode`
	- **GetApiVehicleByMakeNameByModellineCodeByMotorizationCodeAsVehicle**: GET `/api/vehicle/{makename}/{modellinecode}/{motorizationcode}/as-vehicle`
	- **PatchApiVehicleDeactivateById**: PATCH `/api/vehicle/deactivate/{id}`
	- **PatchApiVehicleReactivateById**: PATCH `/api/vehicle/reactivate/{id}`
	- **PatchApiVehicleById**: PATCH `/api/vehicle/{id}`
	- **PatchApiVehicleByIdImages**: PATCH `/api/vehicle/{id}/images`
	- **PostApiVehicle**: POST `/api/vehicle`
	- **PostApiVehicleBulkByQuantity**: POST `/api/vehicle/bulk/{quantity}`
	- **PostApiVehicleHyundaiImport**: POST `/api/vehicle/hyundai/import`
	- **PostApiVehicleImportchannel**: POST `/api/vehicle/importchannel`
	- **PostApiVehicleByIdRenderPriceSticker**: POST `/api/vehicle/{id}/renderpricesticker`
	- **PostApiVehicleByVehicleIdPromoteToVault**: POST `/api/vehicle/{vehicleid}/promote/to-vault`
	- **PutApiVehicleById**: PUT `/api/vehicle/{id}`
- **API.VehicleBooking**
	- **DeleteApiVehicleBookingById**: DELETE `/api/vehiclebooking/{id}`
	- **GetApiVehicleBooking**: GET `/api/vehiclebooking`
	- **GetApiVehicleBookingResources**: GET `/api/vehiclebooking/resources`
	- **GetApiVehicleBookingResourcesTestdrives**: GET `/api/vehiclebooking/resources/testdrives`
	- **GetApiVehicleBookingResourcesTestdrivesByVehicleId**: GET `/api/vehiclebooking/resources/testdrives/{vehicleid}`
	- **GetApiVehicleBookingById**: GET `/api/vehiclebooking/{id}`
	- **PostApiVehicleBooking**: POST `/api/vehiclebooking`
	- **PutApiVehicleBookingById**: PUT `/api/vehiclebooking/{id}`
- **API.VehicleImport**
	- **GetApiVehicleImportByMakeCarlines**: GET `/api/vehicleimport/{make}/carlines`
	- **GetApiVehicleImportByMakeFsccodeFindByFscCode**: GET `/api/vehicleimport/{make}/fsccode/find/{fsccode}`
	- **GetApiVehicleImportByMakeByCarlineIdByModelIdByGenIdByModellineIdMotors**: GET `/api/vehicleimport/{make}/{carlineid}/{modelid}/{genid}/{modellineid}/motors`
	- **GetApiVehicleImportByMakeByCarlineIdByModelIdByGenIdByModellineIdByMotorizationIdOptions**: GET `/api/vehicleimport/{make}/{carlineid}/{modelid}/{genid}/{modellineid}/{motorizationid}/options`
	- **GetApiVehicleImportByMakeByCarlineIdByModelIdByGenIdByModellineIdByMotorizationIdPackages**: GET `/api/vehicleimport/{make}/{carlineid}/{modelid}/{genid}/{modellineid}/{motorizationid}/packages`
	- **PostApiVehicleImportByMakeImport**: POST `/api/vehicleimport/{make}/import`
- **API.VehicleTaxonomy**
	- **GetApiVehicleTaxonomyOptionResolveByMake**: GET `/api/vehicletaxonomy/optionresolve/{make}`
	- **GetApiVehicleTaxonomyMakes**: GET `/api/vehicletaxonomy/makes`
- **API.Version**
	- **GetApiVersion**: GET `/api/version`
	- **GetApiVersionApp**: GET `/api/version/app`
