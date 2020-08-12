import 'package:raahee/dataModel/model.dart';

class dataToDisplay {
  List<model> displayModel = List<model>();
  model modelObject = model();

  List<model> getDetails() {
    modelObject.name = "Username";
    modelObject.comment =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
    displayModel.add(modelObject);

    modelObject = model();
    modelObject.name = "Username";
    modelObject.comment =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ";
    displayModel.add(modelObject);

    modelObject = model();
    modelObject.name = "Username";
    modelObject.comment =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ";
    displayModel.add(modelObject);

    modelObject = model();
    modelObject.name = "Username";
    modelObject.comment =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
    displayModel.add(modelObject);

    modelObject = model();
    modelObject.name = "Username";
    modelObject.comment =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
    displayModel.add(modelObject);

    return displayModel;
  }
}
