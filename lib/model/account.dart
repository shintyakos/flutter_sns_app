class Account {
  String id;
  String name;
  String imagePath;
  String selfIntroduction;
  String userId;
  DateTime? createdDate;
  DateTime? updatedDate;

  Account({
    this.id = '',
    this.name = '',
    this.imagePath = '',
    this.selfIntroduction = '',
    this.userId = '',
    this.createdDate,
    this.updatedDate
  });
}