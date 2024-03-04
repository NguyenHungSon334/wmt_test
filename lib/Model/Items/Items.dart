class Item {
  final String Brand;
  final String Model;
  final String Serial_number;
  final String Operating_frequency;
  final String Storage_location;
  final String Original_ownership;
  final String Items_status;
  final String Service_status;
  final String Note;
  final List<dynamic> Event;
  final List<dynamic> Project;
  final List<dynamic> Declaration;
  final List<dynamic> Application;
  final String History;
  final String QR_code;

  Item(this.Brand,
      this.Model,
      this.Serial_number,
      this.Operating_frequency,
      this.Storage_location,
      this.Original_ownership,
      this.Items_status,
      this.Service_status,
      this.Note,
      this.Event,
      this.Project,
      this.Declaration,
      this.Application,
      this.History,
      this.QR_code,);


  Map<String, dynamic> toFirestore(){
    return {'Brand': Brand,
      'Model': Model,
      'Serial_number': Serial_number,
      'Operating_frequency': Operating_frequency,
      'Storage_location': Storage_location,
      'Original_ownership': Original_ownership,
      'Items_status': Items_status,
      'Service_status': Service_status,
      'Note': Note ,
      'Event': Event ,
      'QR_code': QR_code ,
      'Project': Project ,
      'Declaration': Declaration ,
      'Application': Application ,

      };
}
}