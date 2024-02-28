import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

/// Callers can lookup localized strings with an instance of AppLocalization
/// returned by `AppLocalization.of(context)`.
///
/// Applications need to include `AppLocalization.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalization.localizationsDelegates,
///   supportedLocales: AppLocalization.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalization.supportedLocales
/// property.
abstract class AppLocalization {
  AppLocalization(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization)!;
  }

  static const LocalizationsDelegate<AppLocalization> delegate = _AppLocalizationDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh')
  ];

  /// No description provided for @helloText.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get helloText;

  /// No description provided for @helloText2.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get helloText2;

  /// No description provided for @pleaseConfirm.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get pleaseConfirm;

  /// No description provided for @newTransfer.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get newTransfer;

  /// No description provided for @termsConditions.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get termsConditions;

  /// No description provided for @termsConditionsUpper.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get termsConditionsUpper;

  /// No description provided for @byClickingYesIAgreeToThe.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get byClickingYesIAgreeToThe;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get no;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get settings;

  /// No description provided for @duitnowAccountNumber.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowAccountNumber;

  /// No description provided for @mobileNumber.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get mobileNumber;

  /// No description provided for @receivingAccount.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get receivingAccount;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get status;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get active;

  /// No description provided for @inactive.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get inactive;

  /// No description provided for @deleted.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get deleted;

  /// No description provided for @disabled.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get disabled;

  /// No description provided for @activated.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get activated;

  /// No description provided for @nameNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get nameNotAvailable;

  /// No description provided for @doYouWantToTemporarilyDeactivateDuitnowId.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get doYouWantToTemporarilyDeactivateDuitnowId;

  /// No description provided for @duitnowIdHasBeenNTemporarilyDeactivated.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowIdHasBeenNTemporarilyDeactivated;

  /// No description provided for @doYouWantToDeleteDuitnowId.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get doYouWantToDeleteDuitnowId;

  /// No description provided for @areYouSure.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get areYouSure;

  /// No description provided for @yourDuitnowAccountLinkedToMobileNumberHasBeenDeactivated.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get yourDuitnowAccountLinkedToMobileNumberHasBeenDeactivated;

  /// No description provided for @yourDuitnowAccountLinkedToMobileNumberHasBeenFailedToDeactivate.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get yourDuitnowAccountLinkedToMobileNumberHasBeenFailedToDeactivate;

  /// No description provided for @doYouWantToDisableTheDuitnowServicesFrom.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get doYouWantToDisableTheDuitnowServicesFrom;

  /// No description provided for @byDisablingThisYouAreNotAbleToUseAllDuitNowServices.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get byDisablingThisYouAreNotAbleToUseAllDuitNowServices;

  /// No description provided for @failedToDisableDuitnowService.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get failedToDisableDuitnowService;

  /// No description provided for @duitnowDailyTransferLimit.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowDailyTransferLimit;

  /// No description provided for @duitnowPerTransferLimit.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowPerTransferLimit;

  /// No description provided for @pleaseChangeTheLimitBeforeUpdate.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get pleaseChangeTheLimitBeforeUpdate;

  /// No description provided for @duitnowTransfer.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowTransfer;

  /// No description provided for @limitOutOfBound.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get limitOutOfBound;

  /// No description provided for @duitnowQr.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowQr;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get confirm;

  /// No description provided for @duitnowIdHasBeenUnlinked.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowIdHasBeenUnlinked;

  /// No description provided for @duitnowIdUnlinkHasFailed.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowIdUnlinkHasFailed;

  /// No description provided for @yourMobileNumberHasBeenUnlinkedFromYourDuitnowId.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get yourMobileNumberHasBeenUnlinkedFromYourDuitnowId;

  /// No description provided for @youCanNoLongerReceiveMoneyInToYour.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get youCanNoLongerReceiveMoneyInToYour;

  /// No description provided for @withThisMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get withThisMobileNumber;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get done;

  /// No description provided for @youCanEasilyReceiveMoney.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get youCanEasilyReceiveMoney;

  /// No description provided for @youHaveCurrentlyDisabledDuitnowServices.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get youHaveCurrentlyDisabledDuitnowServices;

  /// No description provided for @enableDuitnow.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get enableDuitnow;

  /// No description provided for @doYouWantToEnableDuitnowServices.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get doYouWantToEnableDuitnowServices;

  /// No description provided for @invalidTermsConditionsUrl.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get invalidTermsConditionsUrl;

  /// No description provided for @unexpectedErrorPleaseRetryAgain.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get unexpectedErrorPleaseRetryAgain;

  /// No description provided for @invalidUserPleaseContactAdminForMoreDetail.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get invalidUserPleaseContactAdminForMoreDetail;

  /// No description provided for @registerDuitnowId.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get registerDuitnowId;

  /// No description provided for @authenticating.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get authenticating;

  /// No description provided for @pleaseKeyInTheActivationCodeSentTo.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get pleaseKeyInTheActivationCodeSentTo;

  /// No description provided for @otpHasBeenResent.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get otpHasBeenResent;

  /// No description provided for @iDidntReceiveCode.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get iDidntReceiveCode;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get resendCode;

  /// No description provided for @resendANewCodeIn.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get resendANewCodeIn;

  /// No description provided for @ifYouDidNotReceiveYourActivationCode.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get ifYouDidNotReceiveYourActivationCode;

  /// No description provided for @callNow.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get callNow;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get close;

  /// No description provided for @anUnexpectedErrorOccured.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get anUnexpectedErrorOccured;

  /// No description provided for @duitnowIdRegistrationSuccessful.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowIdRegistrationSuccessful;

  /// No description provided for @duitnowIdRegistrationFailed.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowIdRegistrationFailed;

  /// No description provided for @youHaveActivatedYour.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get youHaveActivatedYour;

  /// No description provided for @withNDuitnow.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get withNDuitnow;

  /// No description provided for @accountWithDuitnow.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get accountWithDuitnow;

  /// No description provided for @qrPay.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get qrPay;

  /// No description provided for @qrReceive.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get qrReceive;

  /// No description provided for @errorFetchingQrData.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get errorFetchingQrData;

  /// No description provided for @failedToScanQr.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get failedToScanQr;

  /// No description provided for @placeTheQrCodeWithinTheFrame.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get placeTheQrCodeWithinTheFrame;

  /// No description provided for @getImageFromGallery.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get getImageFromGallery;

  /// No description provided for @couldNotReadQrFromTheImage.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get couldNotReadQrFromTheImage;

  /// No description provided for @qrReceiveDisabled.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get qrReceiveDisabled;

  /// No description provided for @enterAmount.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get enterAmount;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get share;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get copied;

  /// No description provided for @hiYouCanTransferToMyDuitnowAccountNoAccountnumber.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get hiYouCanTransferToMyDuitnowAccountNoAccountnumber;

  /// No description provided for @qrGenerateFailed.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get qrGenerateFailed;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get amount;

  /// No description provided for @showYourQrCodeToYourFriendsOrFamilyTo.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get showYourQrCodeToYourFriendsOrFamilyTo;

  /// No description provided for @amountMyr.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get amountMyr;

  /// No description provided for @secondsSec.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get secondsSec;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get refresh;

  /// No description provided for @dismiss.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get dismiss;

  /// No description provided for @errorFetchingData.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get errorFetchingData;

  /// No description provided for @myFavourites.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get myFavourites;

  /// No description provided for @noFavouriteInTheListYetAddYourFavouriteReceiver.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get noFavouriteInTheListYetAddYourFavouriteReceiver;

  /// No description provided for @transferTo.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get transferTo;

  /// No description provided for @pleaseSelectAnyItem.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get pleaseSelectAnyItem;

  /// No description provided for @pleaseSelectOne.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get pleaseSelectOne;

  /// No description provided for @selectOne.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get selectOne;

  /// No description provided for @pleaseEnterAmount.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get pleaseEnterAmount;

  /// No description provided for @pleaseInsertAmountGreaterThan0.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get pleaseInsertAmountGreaterThan0;

  /// No description provided for @recipientBank.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get recipientBank;

  /// No description provided for @recipientEwallet.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get recipientEwallet;

  /// No description provided for @thisFieldCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get thisFieldCannotBeEmpty;

  /// No description provided for @accountNumber.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get accountNumber;

  /// No description provided for @nricNumber.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get nricNumber;

  /// No description provided for @passportNumber.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get passportNumber;

  /// No description provided for @armypoliceIdNumber.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get armypoliceIdNumber;

  /// No description provided for @businessRegistrationNumber.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get businessRegistrationNumber;

  /// No description provided for @transferType.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get transferType;

  /// No description provided for @feeCharges.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get feeCharges;

  /// No description provided for @feeChargesRm.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get feeChargesRm;

  /// No description provided for @pleaseInsertAmount.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get pleaseInsertAmount;

  /// No description provided for @recipientReference.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get recipientReference;

  /// No description provided for @paymentDetailsOptional.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get paymentDetailsOptional;

  /// No description provided for @issuingCountry.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get issuingCountry;

  /// No description provided for @duitnowTransferReview.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowTransferReview;

  /// No description provided for @reviewTransferDetails.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get reviewTransferDetails;

  /// No description provided for @bank.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get bank;

  /// No description provided for @ewallet.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get ewallet;

  /// No description provided for @duitnowIdType.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowIdType;

  /// No description provided for @paymentDetails.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get paymentDetails;

  /// No description provided for @enterPasscode.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get enterPasscode;

  /// No description provided for @pleaseEnterYourPasscode.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get pleaseEnterYourPasscode;

  /// No description provided for @passcode.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get passcode;

  /// No description provided for @statementDownloadFailed.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get statementDownloadFailed;

  /// No description provided for @transactionSuccessful.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get transactionSuccessful;

  /// No description provided for @transactionPending.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get transactionPending;

  /// No description provided for @transactionFailed.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get transactionFailed;

  /// No description provided for @downloadReceipt.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get downloadReceipt;

  /// No description provided for @unableToLoadPdf.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get unableToLoadPdf;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get report;

  /// No description provided for @faqs.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get faqs;

  /// No description provided for @transferNow.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get transferNow;

  /// No description provided for @scanQr.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get scanQr;

  /// No description provided for @transactionType.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get transactionType;

  /// No description provided for @dateTime.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get dateTime;

  /// No description provided for @duitnowRefNo.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitnowRefNo;

  /// No description provided for @transferAmount.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get transferAmount;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get next;

  /// No description provided for @activateDuitNowIDPrompt.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get activateDuitNowIDPrompt;

  /// No description provided for @duitNowIDDeactivationFailed.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitNowIDDeactivationFailed;

  /// No description provided for @duitNowIDActivationFailed.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitNowIDActivationFailed;

  /// No description provided for @callCustomerServicePrompt.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get callCustomerServicePrompt;

  /// No description provided for @duitNowIDDisabledMessage.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitNowIDDisabledMessage;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get cancel;

  /// No description provided for @switchAccount.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get switchAccount;

  /// No description provided for @switchDuitNowID.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get switchDuitNowID;

  /// No description provided for @changeAccount.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get changeAccount;

  /// No description provided for @changeDuitNowID.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get changeDuitNowID;

  /// No description provided for @duitNowIDInactiveAtOtherBankMessage.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitNowIDInactiveAtOtherBankMessage;

  /// No description provided for @registerSwitchToEWalletMessage.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get registerSwitchToEWalletMessage;

  /// No description provided for @contactRespectiveBankMessage.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get contactRespectiveBankMessage;

  /// No description provided for @duitNowIDActivated.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitNowIDActivated;

  /// No description provided for @duitNowDisabled.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitNowDisabled;

  /// No description provided for @duitNowInactive.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get duitNowInactive;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get ok;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get error;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get success;

  /// No description provided for @confirmAction.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get confirmAction;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get warning;

  /// No description provided for @saveRecipientAs.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get saveRecipientAs;

  /// No description provided for @favourite.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get favourite;

  /// No description provided for @couldWeAccessYourContactListThisWillMakeIt.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get couldWeAccessYourContactListThisWillMakeIt;

  /// No description provided for @hiThere.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDK'**
  String get hiThere;

  /// No description provided for @transactionIsProcessing.
  ///
  /// In en, this message translates to:
  /// **'CHILD SDKg'**
  String get transactionIsProcessing;
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelegate();

  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture<AppLocalization>(lookupAppLocalization(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationDelegate old) => false;
}

AppLocalization lookupAppLocalization(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationEn();
    case 'zh': return AppLocalizationZh();
  }

  throw FlutterError(
    'AppLocalization.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
