class ChartCardModel {
  String cardname;
  String cardtype;
  String charttype;

  List<dynamic> dataList;

  ChartCardModel(this.cardname, this.cardtype, this.charttype, this.dataList) {}
}

class ChartData {
  String x_axis;
  String value;
  String link;
  String data_label;
  String group_column;
  String x_axis_data;
  String y_axis_data;
  String z_axis_data;
  //kpi
  String count;

  ChartData.fromJson(Map<String, dynamic> json)
      : x_axis = json['x_axis'].toString() ?? "",
        value = (json['value'].toString() == '' ? "-1" : json['value'].toString() ?? "-1"),
        link = json['link'].toString() ?? "",
        data_label = json['data_label'].toString() ?? "",
        group_column = json['group_column'].toString() ?? "",
        x_axis_data = json['x_axis_data'].toString() == '' ? "0" : json['x_axis_data'].toString() ?? "0",
        y_axis_data = json['y_axis_data'].toString() == '' ? "0" : json['y_axis_data'].toString() ?? "0",
        z_axis_data = json['z_axis_data'].toString() == '' ? "0" : json['z_axis_data'].toString() ?? "0",
        count = json['count'].toString() ?? "";

  Map<String, dynamic> toJson() => {
        'x_axis': x_axis,
        'value': value,
        'link': link,
        'data_label': data_label,
        'group_column': group_column,
        'x_axis_data': x_axis_data,
        'y_axis_data': y_axis_data,
        'z_axis_data': z_axis_data,
        'count': count,
      };
}
