import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ionicons/ionicons.dart';
import 'package:xiao_tally/api/db/record.dart';
import 'package:xiao_tally/api/textin/receipt.dart';
import 'package:xiao_tally/components/common/page.dart';
import 'package:xiao_tally/components/input/textfield.dart';
import 'package:xiao_tally/config/theme.dart';
import 'package:xiao_tally/src/generated/google/protobuf/timestamp.pb.dart';
import 'package:xiao_tally/src/generated/xiao_grpc.pb.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key, required this.title});

  final String title;

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  // 消费金额
  double amount = 0.0;
  // 消费分类
  String category = '';
  // 消费日期
  DateTime date = DateTime.now();
  // 消费备注
  String remark = '';

  Record record = Record();

//测试
  final List<String> categoryList = [
    '餐饮',
    '交通',
    '购物',
    '娱乐',
    '医疗',
    '住房',
    '通讯',
    '学习',
    '其他',
  ];

  final _formKey = GlobalKey<FormState>();
  TextEditingController amountFieldController = TextEditingController();
  TextEditingController categoryFieldController = TextEditingController();
  TextEditingController dateFieldController = TextEditingController();
  TextEditingController remarkFieldController = TextEditingController();

  String? selectedValue;

  final buttonWidth = 300.0;

  // ImagePicker获取内容后返回的对象是XFile
  XFile? image;
  List<XFile>? imageList;

  // 使用ImagePicker前必须先实例化
  final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return SubPage(
        title: widget.title,
        actions: [
          IconButton(
              onPressed: () => {selectImage()},
              icon: const Icon(Ionicons.scan)),
          // IconButton(onPressed: () => {}, icon: const Icon(Ionicons.checkmark)),
        ],
        body: Container(
          // padding: ,
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 15),
                      XTextField(
                        fieldController: amountFieldController,
                        labelText: '金额',
                      ),
                      XTextField(
                        fieldController: categoryFieldController,
                        labelText: '分类',
                      ),
                      XTextField(
                        fieldController: dateFieldController,
                        labelText: '日期',
                      ),
                      XTextField(
                          fieldController: remarkFieldController,
                          labelText: '备注',
                          maxLines: null),
                      const SizedBox(height: 30),
                      // DropdownButtonFormField2(
                      //   decoration: InputDecoration(
                      //     //Add isDense true and zero Padding.
                      //     //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                      //     isDense: true,
                      //     contentPadding: EdgeInsets.zero,
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(15),
                      //     ),
                      //     //Add more decoration as you want here
                      //     //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                      //   ),
                      //   isExpanded: true,
                      //   hint: const Text(
                      //     'Select Your Gender',
                      //     style: TextStyle(fontSize: 14),
                      //   ),
                      //   icon: const Icon(
                      //     Icons.arrow_drop_down,
                      //     color: Colors.black45,
                      //   ),
                      //   iconSize: 30,
                      //   buttonHeight: 60,
                      //   buttonPadding:
                      //       const EdgeInsets.only(left: 20, right: 10),
                      //   dropdownDecoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(15),
                      //   ),
                      //   items: categoryList
                      //       .map((item) => DropdownMenuItem<String>(
                      //             value: item,
                      //             child: Text(
                      //               item,
                      //               style: const TextStyle(
                      //                 fontSize: 14,
                      //               ),
                      //             ),
                      //           ))
                      //       .toList(),
                      //   validator: (value) {
                      //     if (value == null) {
                      //       return 'Please select category.';
                      //     }
                      //   },
                      //   onChanged: (value) {
                      //     //Do something when changing the item if you want.
                      //   },
                      //   onSaved: (value) {
                      //     selectedValue = value.toString();
                      //   },
                      // ),

                      // const SizedBox(height: 30),
                      // TextButton(
                      //   onPressed: () {
                      //     if (_formKey.currentState!.validate()) {
                      //       _formKey.currentState!.save();
                      //     }
                      //   },
                      //   child: const Text('Submit Button'),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            if (_formKey.currentState!.validate())
              {
                print(_formKey.currentState),
                //获取表单内容
                _formKey.currentState!.save(),

                print(selectedValue),
                print(amountFieldController.text),
                print(categoryFieldController.text),
                print(dateFieldController.text),
                print(remarkFieldController.text),
                record = Record(
                  amount: double.parse(amountFieldController.text),
                  categoryId: categoryFieldController.text,
                  timestamp: Timestamp.fromDateTime(DateTime.now()),
                  note: remarkFieldController.text,
                ),
                print(record),
                addRecord(record),
              },
          },
          backgroundColor: FlutterFlowTheme.of(context).primaryColor,
          child: const Icon(Ionicons.checkmark),
        ));
  }

  selectImage() async {
    XFile? image = await _imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    if (image != null) {
      this.image = image;
      print(image.path);
      var receipt = await recognizeReceipt(image.path);
      if (receipt.amount != "") {
        print('识别成功');
        setState(() {
          amountFieldController.text = receipt.amount.toString();
          categoryFieldController.text = "未支持";
          dateFieldController.text = receipt.datetime;
          remarkFieldController.text = receipt.note;
        });
      } else {
        print('识别失败');
      }
    }
  }

  // recognizeReseipt(byte) async {

  // }

  // void _openSimpleItemPicker(BuildContext context, List<Text> items) {
  //   BottomPicker(
  //     items: items,
  //     title: '分类',
  //     backgroundColor: Colors.white,
  //     bottomPickerTheme: BottomPickerTheme.blue,
  //     pickerTextStyle: const TextStyle(color: Colors.black, fontSize: 23),
  //     onSubmit: (index) {
  //       print(index);
  //       setState(() {
  //         category = items[index].data!;
  //       });
  //       print(category);
  //     },
  //     buttonAlignement: MainAxisAlignment.end,
  //     displayButtonIcon: true,
  //     displaySubmitButton: true,
  //     buttonSingleColor: Colors.blue,
  //   ).show(context);
  // }
}
