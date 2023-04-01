import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:xiao_tally/config/theme.dart';
import 'package:xiao_tally/src/generated/xiao_grpc.pb.dart';

class ReceiptRecordItem extends StatefulWidget {
  const ReceiptRecordItem({
    super.key,
    required this.receiptRecord,
  });

  final Receipt receiptRecord;

  @override
  State<ReceiptRecordItem> createState() => _ReceiptRecordItemState();
}

class _ReceiptRecordItemState extends State<ReceiptRecordItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Color(0x411D2429),
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://images.unsplash.com/photo-1574914629385-46448b767aec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGF0dGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                  width: 70,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF090F13),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 8, 0),
                        child: AutoSizeText(
                          widget.receiptRecord.datetime,
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF7C8791),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: Icon(
                    Icons.chevron_right_rounded,
                    color: Color(0xFF57636C),
                    size: 24,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 8),
                  child: Text(
                    '\￥11.00',
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF4B39EF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
//       width: MediaQuery.of(context).size.width,
//       height: 100,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: const [
//           BoxShadow(
//             blurRadius: 3,
//             color: Color(0x411D2429),
//             offset: Offset(0, 1),
//           )
//         ],
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Padding(
//         padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Padding(
//               padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.network(
//                   'https://images.unsplash.com/photo-1574914629385-46448b767aec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGF0dGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
//                   width: 70,
//                   height: 100,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       widget.receiptRecord.amount.toString(),
//                       style: const TextStyle(
//                         color: Color(0xFF151B1E),
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                       child: Text(
//                         widget.receiptRecord.note,
//                         style: const TextStyle(
//                           color: Color(0xFF8B97A2),
//                           fontSize: 14,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
//                       child: Text(
//                         widget.receiptRecord.amount.toString(),
//                         style: const TextStyle(
//                           color: Color(0xFF8B97A2),
//                           fontSize: 14,
//                           fontWeight: FontWeight.normal,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
