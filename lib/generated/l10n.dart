// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `SignIn`
  String get SignIn {
    return Intl.message(
      'SignIn',
      name: 'SignIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get SignUp {
    return Intl.message(
      'Sign up',
      name: 'SignUp',
      desc: '',
      args: [],
    );
  }

  /// `Don’n have an account?`
  String get DonHaveAccount {
    return Intl.message(
      'Don’n have an account?',
      name: 'DonHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get haveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your Password?`
  String get ForgotPassword {
    return Intl.message(
      'Forgot your Password?',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get fieldrequired {
    return Intl.message(
      'This field is required',
      name: 'fieldrequired',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email address`
  String get validEmail {
    return Intl.message(
      'Enter a valid email address',
      name: 'validEmail',
      desc: '',
      args: [],
    );
  }

  /// `password must be at least 8 digits long and special character`
  String get validPassword {
    return Intl.message(
      'password must be at least 8 digits long and special character',
      name: 'validPassword',
      desc: '',
      args: [],
    );
  }

  /// `Choose Your Language`
  String get lang {
    return Intl.message(
      'Choose Your Language',
      name: 'lang',
      desc: '',
      args: [],
    );
  }

  /// `Syndrome Name`
  String get syndromeName {
    return Intl.message(
      'Syndrome Name',
      name: 'syndromeName',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Treatment`
  String get treatment {
    return Intl.message(
      'Treatment',
      name: 'treatment',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `male`
  String get male {
    return Intl.message(
      'male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `female`
  String get female {
    return Intl.message(
      'female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Nationality`
  String get nationality {
    return Intl.message(
      'Nationality',
      name: 'nationality',
      desc: '',
      args: [],
    );
  }

  /// `Egyptian`
  String get egyptian {
    return Intl.message(
      'Egyptian',
      name: 'egyptian',
      desc: '',
      args: [],
    );
  }

  /// `American`
  String get american {
    return Intl.message(
      'American',
      name: 'american',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get russian {
    return Intl.message(
      'Russian',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Chinese`
  String get chinese {
    return Intl.message(
      'Chinese',
      name: 'chinese',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get Username {
    return Intl.message(
      'Username',
      name: 'Username',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Number`
  String get VehicleNumber {
    return Intl.message(
      'Vehicle Number',
      name: 'VehicleNumber',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get Confirm {
    return Intl.message(
      'Confirm',
      name: 'Confirm',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your username`
  String get UsernameError {
    return Intl.message(
      'Please enter your username',
      name: 'UsernameError',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get PasswordError {
    return Intl.message(
      'Please enter your password',
      name: 'PasswordError',
      desc: '',
      args: [],
    );
  }

  /// `Please enter vehicle number`
  String get VehicleNumberError {
    return Intl.message(
      'Please enter vehicle number',
      name: 'VehicleNumberError',
      desc: '',
      args: [],
    );
  }

  /// `User Information`
  String get UserInfo {
    return Intl.message(
      'User Information',
      name: 'UserInfo',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get Phone {
    return Intl.message(
      'Phone',
      name: 'Phone',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get Payment {
    return Intl.message(
      'Payment',
      name: 'Payment',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get Balance {
    return Intl.message(
      'Balance',
      name: 'Balance',
      desc: '',
      args: [],
    );
  }

  /// `Created By`
  String get CreatedBy {
    return Intl.message(
      'Created By',
      name: 'CreatedBy',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get LastTransactions {
    return Intl.message(
      'Transactions',
      name: 'LastTransactions',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get Number {
    return Intl.message(
      'Number',
      name: 'Number',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Type`
  String get VehicleType {
    return Intl.message(
      'Vehicle Type',
      name: 'VehicleType',
      desc: '',
      args: [],
    );
  }

  /// `Car Mark`
  String get CarMark {
    return Intl.message(
      'Car Mark',
      name: 'CarMark',
      desc: '',
      args: [],
    );
  }

  /// `Car Number`
  String get CarNumber {
    return Intl.message(
      'Car Number',
      name: 'CarNumber',
      desc: '',
      args: [],
    );
  }

  /// `Car Color`
  String get CarColor {
    return Intl.message(
      'Car Color',
      name: 'CarColor',
      desc: '',
      args: [],
    );
  }

  /// `Car Owner`
  String get CarOwner {
    return Intl.message(
      'Car Owner',
      name: 'CarOwner',
      desc: '',
      args: [],
    );
  }

  /// `Driver Name`
  String get DriverName {
    return Intl.message(
      'Driver Name',
      name: 'DriverName',
      desc: '',
      args: [],
    );
  }

  /// `User does not exist`
  String get userNotExist {
    return Intl.message(
      'User does not exist',
      name: 'userNotExist',
      desc: '',
      args: [],
    );
  }

  /// `please select your vehicle number`
  String get validateVehicle {
    return Intl.message(
      'please select your vehicle number',
      name: 'validateVehicle',
      desc: '',
      args: [],
    );
  }

  /// `please Input Your Password`
  String get validatePassword {
    return Intl.message(
      'please Input Your Password',
      name: 'validatePassword',
      desc: '',
      args: [],
    );
  }

  /// `please Input Your Username`
  String get validateUsername {
    return Intl.message(
      'please Input Your Username',
      name: 'validateUsername',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get noInternet {
    return Intl.message(
      'No Internet Connection',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `Press Search to find the customer`
  String get findUser {
    return Intl.message(
      'Press Search to find the customer',
      name: 'findUser',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Password is incorrect`
  String get passwordIsIncorrect {
    return Intl.message(
      'Password is incorrect',
      name: 'passwordIsIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get CustomerName {
    return Intl.message(
      'Name',
      name: 'CustomerName',
      desc: '',
      args: [],
    );
  }

  /// `Create New Customer`
  String get CreateNewCustomer {
    return Intl.message(
      'Create New Customer',
      name: 'CreateNewCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Please fill all fields`
  String get pleaseFillAllFields {
    return Intl.message(
      'Please fill all fields',
      name: 'pleaseFillAllFields',
      desc: '',
      args: [],
    );
  }

  /// `Customer not found`
  String get customerNotExist {
    return Intl.message(
      'Customer not found',
      name: 'customerNotExist',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add customer`
  String get FiledToAddCustomer {
    return Intl.message(
      'Failed to add customer',
      name: 'FiledToAddCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Customer created successfully`
  String get customerCreated {
    return Intl.message(
      'Customer created successfully',
      name: 'customerCreated',
      desc: '',
      args: [],
    );
  }

  /// `Customer number already exist`
  String get CustomerNumberAlreadyExist {
    return Intl.message(
      'Customer number already exist',
      name: 'CustomerNumberAlreadyExist',
      desc: '',
      args: [],
    );
  }

  /// `Please enter phone number`
  String get enterPhoneNumber {
    return Intl.message(
      'Please enter phone number',
      name: 'enterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Press to create new customer`
  String get PressToAddCustomer {
    return Intl.message(
      'Press to create new customer',
      name: 'PressToAddCustomer',
      desc: '',
      args: [],
    );
  }

  /// `You should enter your name and phone number`
  String get youShouldEnterYourNameAndPhoneNumber {
    return Intl.message(
      'You should enter your name and phone number',
      name: 'youShouldEnterYourNameAndPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Signature is required`
  String get SignatureRequired {
    return Intl.message(
      'Signature is required',
      name: 'SignatureRequired',
      desc: '',
      args: [],
    );
  }

  /// `Name is required`
  String get ClientNameRequired {
    return Intl.message(
      'Name is required',
      name: 'ClientNameRequired',
      desc: '',
      args: [],
    );
  }

  /// `No Transactions Found`
  String get NoTransactions {
    return Intl.message(
      'No Transactions Found',
      name: 'NoTransactions',
      desc: '',
      args: [],
    );
  }

  /// `Add Transaction`
  String get AddTransaction {
    return Intl.message(
      'Add Transaction',
      name: 'AddTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get Add {
    return Intl.message(
      'Add',
      name: 'Add',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get Back {
    return Intl.message(
      'Back',
      name: 'Back',
      desc: '',
      args: [],
    );
  }

  /// `Update Transaction`
  String get UpdateTransaction {
    return Intl.message(
      'Update Transaction',
      name: 'UpdateTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get Update {
    return Intl.message(
      'Update',
      name: 'Update',
      desc: '',
      args: [],
    );
  }

  /// `Choose Vehicle Type`
  String get ChooseVehicleType {
    return Intl.message(
      'Choose Vehicle Type',
      name: 'ChooseVehicleType',
      desc: '',
      args: [],
    );
  }

  /// `Car`
  String get Car {
    return Intl.message(
      'Car',
      name: 'Car',
      desc: '',
      args: [],
    );
  }

  /// `Motorcycle`
  String get Motorcycle {
    return Intl.message(
      'Motorcycle',
      name: 'Motorcycle',
      desc: '',
      args: [],
    );
  }

  /// `Strike Chart`
  String get StrikeChart {
    return Intl.message(
      'Strike Chart',
      name: 'StrikeChart',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get Edit {
    return Intl.message(
      'Edit',
      name: 'Edit',
      desc: '',
      args: [],
    );
  }

  /// `Sender Data`
  String get ClientData {
    return Intl.message(
      'Sender Data',
      name: 'ClientData',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Signature`
  String get signature {
    return Intl.message(
      'Signature',
      name: 'signature',
      desc: '',
      args: [],
    );
  }

  /// `Write Your Notes Here`
  String get notes {
    return Intl.message(
      'Write Your Notes Here',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `Add Photos`
  String get AddPhotos {
    return Intl.message(
      'Add Photos',
      name: 'AddPhotos',
      desc: '',
      args: [],
    );
  }

  /// `Transaction Number`
  String get Transaction {
    return Intl.message(
      'Transaction Number',
      name: 'Transaction',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get Delete {
    return Intl.message(
      'Delete',
      name: 'Delete',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get Clear {
    return Intl.message(
      'Clear',
      name: 'Clear',
      desc: '',
      args: [],
    );
  }

  /// `Signature`
  String get Signature {
    return Intl.message(
      'Signature',
      name: 'Signature',
      desc: '',
      args: [],
    );
  }

  /// `NotesLabel`
  String get NotesLabel {
    return Intl.message(
      'NotesLabel',
      name: 'NotesLabel',
      desc: '',
      args: [],
    );
  }

  /// `Undo`
  String get Undo {
    return Intl.message(
      'Undo',
      name: 'Undo',
      desc: '',
      args: [],
    );
  }

  /// `Redo`
  String get Redo {
    return Intl.message(
      'Redo',
      name: 'Redo',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get Finish {
    return Intl.message(
      'Finish',
      name: 'Finish',
      desc: '',
      args: [],
    );
  }

  /// `You haven't selected any images`
  String get CancelSelectingImages {
    return Intl.message(
      'You haven\'t selected any images',
      name: 'CancelSelectingImages',
      desc: '',
      args: [],
    );
  }

  /// `Deliver`
  String get Deliver {
    return Intl.message(
      'Deliver',
      name: 'Deliver',
      desc: '',
      args: [],
    );
  }

  /// `Client Signature`
  String get ClientSignature {
    return Intl.message(
      'Client Signature',
      name: 'ClientSignature',
      desc: '',
      args: [],
    );
  }

  /// `No email has been added`
  String get NoEmailProvided {
    return Intl.message(
      'No email has been added',
      name: 'NoEmailProvided',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle List`
  String get VehicleList {
    return Intl.message(
      'Vehicle List',
      name: 'VehicleList',
      desc: '',
      args: [],
    );
  }

  /// `Client Name`
  String get ClientName {
    return Intl.message(
      'Client Name',
      name: 'ClientName',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Location`
  String get PickupLocation {
    return Intl.message(
      'Pickup Location',
      name: 'PickupLocation',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get Address {
    return Intl.message(
      'Address',
      name: 'Address',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get Notes {
    return Intl.message(
      'Notes',
      name: 'Notes',
      desc: '',
      args: [],
    );
  }

  /// `Extra Photos`
  String get ExtraPhotos {
    return Intl.message(
      'Extra Photos',
      name: 'ExtraPhotos',
      desc: '',
      args: [],
    );
  }

  /// `Another Vehicle +`
  String get AnotherVehicle {
    return Intl.message(
      'Another Vehicle +',
      name: 'AnotherVehicle',
      desc: '',
      args: [],
    );
  }

  /// `Search By Phone`
  String get SearchByPhone {
    return Intl.message(
      'Search By Phone',
      name: 'SearchByPhone',
      desc: '',
      args: [],
    );
  }

  /// `Search For Vehicle Without Invoice`
  String get SearchForVehicleWithoutInvoice {
    return Intl.message(
      'Search For Vehicle Without Invoice',
      name: 'SearchForVehicleWithoutInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Without Invoice List`
  String get VehicleWithoutInvoiceList {
    return Intl.message(
      'Vehicle Without Invoice List',
      name: 'VehicleWithoutInvoiceList',
      desc: '',
      args: [],
    );
  }

  /// `There is no Vehicles without invoice`
  String get ThereIsNoVehiclesWithoutInvoice {
    return Intl.message(
      'There is no Vehicles without invoice',
      name: 'ThereIsNoVehiclesWithoutInvoice',
      desc: '',
      args: [],
    );
  }

  /// `You haven't added a phone number`
  String get YouHaveNotAddPhoneNumber {
    return Intl.message(
      'You haven\'t added a phone number',
      name: 'YouHaveNotAddPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Search Again`
  String get searchAgain {
    return Intl.message(
      'Search Again',
      name: 'searchAgain',
      desc: '',
      args: [],
    );
  }

  /// `This phone number is not registered`
  String get ThisPhoneNumberIsNotRegistered {
    return Intl.message(
      'This phone number is not registered',
      name: 'ThisPhoneNumberIsNotRegistered',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get LocationFrom {
    return Intl.message(
      'From',
      name: 'LocationFrom',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get LocationTo {
    return Intl.message(
      'To',
      name: 'LocationTo',
      desc: '',
      args: [],
    );
  }

  /// `Get Invoice`
  String get GetInvoice {
    return Intl.message(
      'Get Invoice',
      name: 'GetInvoice',
      desc: '',
      args: [],
    );
  }

  /// `SKIP`
  String get SKIP {
    return Intl.message(
      'SKIP',
      name: 'SKIP',
      desc: '',
      args: [],
    );
  }

  /// `Todo List`
  String get TodoList {
    return Intl.message(
      'Todo List',
      name: 'TodoList',
      desc: '',
      args: [],
    );
  }

  /// `Mission`
  String get Mission {
    return Intl.message(
      'Mission',
      name: 'Mission',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get Date {
    return Intl.message(
      'Date',
      name: 'Date',
      desc: '',
      args: [],
    );
  }

  /// `Count`
  String get Count {
    return Intl.message(
      'Count',
      name: 'Count',
      desc: '',
      args: [],
    );
  }

  /// `Cost`
  String get Cost {
    return Intl.message(
      'Cost',
      name: 'Cost',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Mark`
  String get VehicleMark {
    return Intl.message(
      'Vehicle Mark',
      name: 'VehicleMark',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Color`
  String get VehicleColor {
    return Intl.message(
      'Vehicle Color',
      name: 'VehicleColor',
      desc: '',
      args: [],
    );
  }

  /// `Item`
  String get Item {
    return Intl.message(
      'Item',
      name: 'Item',
      desc: '',
      args: [],
    );
  }

  /// `No notes`
  String get NoNotes {
    return Intl.message(
      'No notes',
      name: 'NoNotes',
      desc: '',
      args: [],
    );
  }

  /// `Invoice`
  String get Invoice {
    return Intl.message(
      'Invoice',
      name: 'Invoice',
      desc: '',
      args: [],
    );
  }

  /// `Invoice Number`
  String get InvoiceNumber {
    return Intl.message(
      'Invoice Number',
      name: 'InvoiceNumber',
      desc: '',
      args: [],
    );
  }

  /// `Clause`
  String get Clause {
    return Intl.message(
      'Clause',
      name: 'Clause',
      desc: '',
      args: [],
    );
  }

  /// `Dinar`
  String get Dinar {
    return Intl.message(
      'Dinar',
      name: 'Dinar',
      desc: '',
      args: [],
    );
  }

  /// `fils`
  String get fils {
    return Intl.message(
      'fils',
      name: 'fils',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get Quantity {
    return Intl.message(
      'Quantity',
      name: 'Quantity',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get Description {
    return Intl.message(
      'Description',
      name: 'Description',
      desc: '',
      args: [],
    );
  }

  /// `There is no undelivered vehicles`
  String get ThereIsNoUnDeliveredVehicles {
    return Intl.message(
      'There is no undelivered vehicles',
      name: 'ThereIsNoUnDeliveredVehicles',
      desc: '',
      args: [],
    );
  }

  /// `Red`
  String get Red {
    return Intl.message(
      'Red',
      name: 'Red',
      desc: '',
      args: [],
    );
  }

  /// `Blue`
  String get Blue {
    return Intl.message(
      'Blue',
      name: 'Blue',
      desc: '',
      args: [],
    );
  }

  /// `Black`
  String get Black {
    return Intl.message(
      'Black',
      name: 'Black',
      desc: '',
      args: [],
    );
  }

  /// `White`
  String get White {
    return Intl.message(
      'White',
      name: 'White',
      desc: '',
      args: [],
    );
  }

  /// `Silver`
  String get Silver {
    return Intl.message(
      'Silver',
      name: 'Silver',
      desc: '',
      args: [],
    );
  }

  /// `Gray`
  String get Gray {
    return Intl.message(
      'Gray',
      name: 'Gray',
      desc: '',
      args: [],
    );
  }

  /// `Green`
  String get Green {
    return Intl.message(
      'Green',
      name: 'Green',
      desc: '',
      args: [],
    );
  }

  /// `Yellow`
  String get Yellow {
    return Intl.message(
      'Yellow',
      name: 'Yellow',
      desc: '',
      args: [],
    );
  }

  /// `Orange`
  String get Orange {
    return Intl.message(
      'Orange',
      name: 'Orange',
      desc: '',
      args: [],
    );
  }

  /// `Purple`
  String get Purple {
    return Intl.message(
      'Purple',
      name: 'Purple',
      desc: '',
      args: [],
    );
  }

  /// `Brown`
  String get Brown {
    return Intl.message(
      'Brown',
      name: 'Brown',
      desc: '',
      args: [],
    );
  }

  /// `Gold`
  String get Gold {
    return Intl.message(
      'Gold',
      name: 'Gold',
      desc: '',
      args: [],
    );
  }

  /// `Beige`
  String get Beige {
    return Intl.message(
      'Beige',
      name: 'Beige',
      desc: '',
      args: [],
    );
  }

  /// `Pink`
  String get Pink {
    return Intl.message(
      'Pink',
      name: 'Pink',
      desc: '',
      args: [],
    );
  }

  /// `Navy`
  String get Navy {
    return Intl.message(
      'Navy',
      name: 'Navy',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get Cash {
    return Intl.message(
      'Cash',
      name: 'Cash',
      desc: '',
      args: [],
    );
  }

  /// `Click`
  String get Click {
    return Intl.message(
      'Click',
      name: 'Click',
      desc: '',
      args: [],
    );
  }

  /// `Debit`
  String get Debit {
    return Intl.message(
      'Debit',
      name: 'Debit',
      desc: '',
      args: [],
    );
  }

  /// `Total In Letters`
  String get TotalInLetters {
    return Intl.message(
      'Total In Letters',
      name: 'TotalInLetters',
      desc: '',
      args: [],
    );
  }

  /// `Vehicles Transported`
  String get VehiclesTransported {
    return Intl.message(
      'Vehicles Transported',
      name: 'VehiclesTransported',
      desc: '',
      args: [],
    );
  }

  /// `This payment method is not available`
  String get ThisPaymentMethodIsNotAvailableForThisCustomer {
    return Intl.message(
      'This payment method is not available',
      name: 'ThisPaymentMethodIsNotAvailableForThisCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Edit Clause`
  String get EditClause {
    return Intl.message(
      'Edit Clause',
      name: 'EditClause',
      desc: '',
      args: [],
    );
  }

  /// `Get the PDF`
  String get getThePdf {
    return Intl.message(
      'Get the PDF',
      name: 'getThePdf',
      desc: '',
      args: [],
    );
  }

  /// `Add Clause`
  String get ADDclause {
    return Intl.message(
      'Add Clause',
      name: 'ADDclause',
      desc: '',
      args: [],
    );
  }

  /// `New Clause`
  String get NewClause {
    return Intl.message(
      'New Clause',
      name: 'NewClause',
      desc: '',
      args: [],
    );
  }

  /// `Enable Your Location`
  String get EnableYourLocation {
    return Intl.message(
      'Enable Your Location',
      name: 'EnableYourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Enable Location`
  String get EnableLocation {
    return Intl.message(
      'Enable Location',
      name: 'EnableLocation',
      desc: '',
      args: [],
    );
  }

  /// `Please allow us to access your location service`
  String get PleaseAllowLocation {
    return Intl.message(
      'Please allow us to access your location service',
      name: 'PleaseAllowLocation',
      desc: '',
      args: [],
    );
  }

  /// `TO DO`
  String get todo {
    return Intl.message(
      'TO DO',
      name: 'todo',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get Start {
    return Intl.message(
      'Start',
      name: 'Start',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle added successfully`
  String get VehicleAddedSuccessfully {
    return Intl.message(
      'Vehicle added successfully',
      name: 'VehicleAddedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get SomethingWentWrong {
    return Intl.message(
      'Something went wrong',
      name: 'SomethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get TryAgain {
    return Intl.message(
      'Try again',
      name: 'TryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Dinar is required`
  String get DinarRequired {
    return Intl.message(
      'Dinar is required',
      name: 'DinarRequired',
      desc: '',
      args: [],
    );
  }

  /// `Quantity is required`
  String get QuantityRequired {
    return Intl.message(
      'Quantity is required',
      name: 'QuantityRequired',
      desc: '',
      args: [],
    );
  }

  /// `Description is required`
  String get DescriptionRequired {
    return Intl.message(
      'Description is required',
      name: 'DescriptionRequired',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get Logout {
    return Intl.message(
      'Logout',
      name: 'Logout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to logout?`
  String get SureLogout {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'SureLogout',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message(
      'Cancel',
      name: 'Cancel',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get ChangeLanguage {
    return Intl.message(
      'Change Language',
      name: 'ChangeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Choose the language you want to change to`
  String get ChooseLanguageYouWantToChangeTo {
    return Intl.message(
      'Choose the language you want to change to',
      name: 'ChooseLanguageYouWantToChangeTo',
      desc: '',
      args: [],
    );
  }

  /// `Wrong phone number`
  String get WrongPhoneNumber {
    return Intl.message(
      'Wrong phone number',
      name: 'WrongPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `There is no Invoice`
  String get VouchersNotFound {
    return Intl.message(
      'There is no Invoice',
      name: 'VouchersNotFound',
      desc: '',
      args: [],
    );
  }

  /// `To Do List`
  String get ToDoList {
    return Intl.message(
      'To Do List',
      name: 'ToDoList',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `No Sub Missions`
  String get NoSubMissions {
    return Intl.message(
      'No Sub Missions',
      name: 'NoSubMissions',
      desc: '',
      args: [],
    );
  }

  /// `Password is incorrect`
  String get PasswordIsIncorrect {
    return Intl.message(
      'Password is incorrect',
      name: 'PasswordIsIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `There is no Available vehicles`
  String get ThereIsNoAvailableVehicles {
    return Intl.message(
      'There is no Available vehicles',
      name: 'ThereIsNoAvailableVehicles',
      desc: '',
      args: [],
    );
  }

  /// `Wrong value`
  String get CanNotAddNegativeValue {
    return Intl.message(
      'Wrong value',
      name: 'CanNotAddNegativeValue',
      desc: '',
      args: [],
    );
  }

  /// `Receive Screen`
  String get ReceiveScreen {
    return Intl.message(
      'Receive Screen',
      name: 'ReceiveScreen',
      desc: '',
      args: [],
    );
  }

  /// `Deliver Screen`
  String get DeliverScreen {
    return Intl.message(
      'Deliver Screen',
      name: 'DeliverScreen',
      desc: '',
      args: [],
    );
  }

  /// `Received Vehicle Details`
  String get ViewReceivedVehicleDetails {
    return Intl.message(
      'Received Vehicle Details',
      name: 'ViewReceivedVehicleDetails',
      desc: '',
      args: [],
    );
  }

  /// `Receiver Data`
  String get ReceiverData {
    return Intl.message(
      'Receiver Data',
      name: 'ReceiverData',
      desc: '',
      args: [],
    );
  }

  /// `Receiver Signature`
  String get ReceiverSignature {
    return Intl.message(
      'Receiver Signature',
      name: 'ReceiverSignature',
      desc: '',
      args: [],
    );
  }

  /// `Sender Signature`
  String get SenderSignature {
    return Intl.message(
      'Sender Signature',
      name: 'SenderSignature',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get Create {
    return Intl.message(
      'Create',
      name: 'Create',
      desc: '',
      args: [],
    );
  }

  /// `This will take a few seconds..`
  String get ThisWillTakeAFewSECONDS {
    return Intl.message(
      'This will take a few seconds..',
      name: 'ThisWillTakeAFewSECONDS',
      desc: '',
      args: [],
    );
  }

  /// `Add Notes`
  String get AddNotes {
    return Intl.message(
      'Add Notes',
      name: 'AddNotes',
      desc: '',
      args: [],
    );
  }

  /// `Done adding notes to the PDF`
  String get DoneAddingNotesToThePdf {
    return Intl.message(
      'Done adding notes to the PDF',
      name: 'DoneAddingNotesToThePdf',
      desc: '',
      args: [],
    );
  }

  /// `There is No Missions`
  String get NoTodo {
    return Intl.message(
      'There is No Missions',
      name: 'NoTodo',
      desc: '',
      args: [],
    );
  }

  /// `Check Your Location Service`
  String get CheckYourLocation {
    return Intl.message(
      'Check Your Location Service',
      name: 'CheckYourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Car Plate`
  String get CarPlate {
    return Intl.message(
      'Car Plate',
      name: 'CarPlate',
      desc: '',
      args: [],
    );
  }

  /// `Fuel Filling`
  String get fuelFilling {
    return Intl.message(
      'Fuel Filling',
      name: 'fuelFilling',
      desc: '',
      args: [],
    );
  }

  /// `Oil Exchange`
  String get OilExchange {
    return Intl.message(
      'Oil Exchange',
      name: 'OilExchange',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Meter`
  String get vehicleMeter {
    return Intl.message(
      'Vehicle Meter',
      name: 'vehicleMeter',
      desc: '',
      args: [],
    );
  }

  /// `Liters`
  String get Liters {
    return Intl.message(
      'Liters',
      name: 'Liters',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Last Fuel Details`
  String get LastFuelDetails {
    return Intl.message(
      'Last Fuel Details',
      name: 'LastFuelDetails',
      desc: '',
      args: [],
    );
  }

  /// `Back to home`
  String get BackToHome {
    return Intl.message(
      'Back to home',
      name: 'BackToHome',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get NoData {
    return Intl.message(
      'No Data',
      name: 'NoData',
      desc: '',
      args: [],
    );
  }

  /// `Change Oil`
  String get ChangeOil {
    return Intl.message(
      'Change Oil',
      name: 'ChangeOil',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance Center`
  String get MaintenanceCenter {
    return Intl.message(
      'Maintenance Center',
      name: 'MaintenanceCenter',
      desc: '',
      args: [],
    );
  }

  /// `You should add a photo`
  String get YouShouldTakeAPhoto {
    return Intl.message(
      'You should add a photo',
      name: 'YouShouldTakeAPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Engine oil exceeds the limit`
  String get Warning {
    return Intl.message(
      'Engine oil exceeds the limit',
      name: 'Warning',
      desc: '',
      args: [],
    );
  }

  /// `MeterImage`
  String get MeterImage {
    return Intl.message(
      'MeterImage',
      name: 'MeterImage',
      desc: '',
      args: [],
    );
  }

  /// `Air Filter`
  String get AirFilter {
    return Intl.message(
      'Air Filter',
      name: 'AirFilter',
      desc: '',
      args: [],
    );
  }

  /// `Diesel Filter`
  String get DieselFilter {
    return Intl.message(
      'Diesel Filter',
      name: 'DieselFilter',
      desc: '',
      args: [],
    );
  }

  /// `Tap to select an image`
  String get TapSelectImage {
    return Intl.message(
      'Tap to select an image',
      name: 'TapSelectImage',
      desc: '',
      args: [],
    );
  }

  /// `You entered wrong meter value`
  String get YouEnteredWrongMeterValue {
    return Intl.message(
      'You entered wrong meter value',
      name: 'YouEnteredWrongMeterValue',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get Yes {
    return Intl.message(
      'Yes',
      name: 'Yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get No {
    return Intl.message(
      'No',
      name: 'No',
      desc: '',
      args: [],
    );
  }

  /// `There is no invoice`
  String get ThereIsNoInvoice {
    return Intl.message(
      'There is no invoice',
      name: 'ThereIsNoInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Can't edit this invoice`
  String get CanNotEditThisInvoice {
    return Intl.message(
      'Can\'t edit this invoice',
      name: 'CanNotEditThisInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Change both filters`
  String get BothFilters {
    return Intl.message(
      'Change both filters',
      name: 'BothFilters',
      desc: '',
      args: [],
    );
  }

  /// `Change Air Filter`
  String get ChangeAirFilter {
    return Intl.message(
      'Change Air Filter',
      name: 'ChangeAirFilter',
      desc: '',
      args: [],
    );
  }

  /// `Change Diesel Filter`
  String get ChangeDieselFilter {
    return Intl.message(
      'Change Diesel Filter',
      name: 'ChangeDieselFilter',
      desc: '',
      args: [],
    );
  }

  /// `Oil Details`
  String get OilDetails {
    return Intl.message(
      'Oil Details',
      name: 'OilDetails',
      desc: '',
      args: [],
    );
  }

  /// `Click to select an image`
  String get ClickToSelectAnImage {
    return Intl.message(
      'Click to select an image',
      name: 'ClickToSelectAnImage',
      desc: '',
      args: [],
    );
  }

  /// `You can't delete this clause`
  String get YouCanNotDeleteThisClause {
    return Intl.message(
      'You can\'t delete this clause',
      name: 'YouCanNotDeleteThisClause',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
