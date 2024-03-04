class Information {
  String No;
  String Projector;
  String Projector_Serial_Number;
  String IP_Address;
  String Lamp_hours_before;
  String Main_SW_ver;
  List<dynamic> Card;
  String Country_of_Loan;
  String Date_Import;
  String Note;
  String Status;

  Information({
    required this.No,
    required this.Projector,
    required this.Projector_Serial_Number,
    required this.IP_Address,
    required this.Lamp_hours_before,
    required this.Main_SW_ver,
    required this.Card,
    required this.Country_of_Loan,
    required this.Date_Import,
    required this.Note,
    required this.Status,
  });

  Map<String, dynamic> toFirestore() {
    return {
      'No': No,
      'Projector': Projector,
      'Projector Serial Number': Projector_Serial_Number,
      'IP Address': IP_Address,
      'Lamp hours before': Lamp_hours_before,
      'Main SW ver': Main_SW_ver,
      'Card': Card,
      'Country of Loan': Country_of_Loan,
      'Date Import': Date_Import,
      'Note': Note ?? '', // Handle null value for Note
      'Status': Status ?? '', // Handle null value for Status
    };
  }
}
