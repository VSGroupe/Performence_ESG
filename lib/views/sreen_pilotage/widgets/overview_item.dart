import 'package:flutter/material.dart';
import 'package:performence_esg/views/sreen_pilotage/widgets/custom_text.dart';

class OverviewExpansionItem extends StatefulWidget {
  final String title;
  final String entiteID;
  final Color titleColor;
  final List<Widget> children;
  final Function()? onPress;
  final double? height;

  const OverviewExpansionItem(
      {Key? key,
      required this.title,
      required this.titleColor,
      required this.children,
      required this.entiteID,
      this.onPress,
      this.height})
      : super(key: key);

  @override
  _OverviewExpansionItemState createState() => _OverviewExpansionItemState();
}

class _OverviewExpansionItemState extends State<OverviewExpansionItem> {
  late bool isVisible;

  bool entityIsnotInRestriction(List userRestrictionList, String entity) {
    return userRestrictionList.isEmpty || !userRestrictionList.contains(entity);
  }

  @override
  void initState() {
    isVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: const ButtonStyle(alignment: Alignment.centerLeft),
                onPressed: widget.onPress ??
                    () {
                      // goToEspaceEntitePilotage(widget.entiteID);
                    },
                child: CustomText(
                  text: widget.title,
                  color: widget.titleColor,
                  weight: FontWeight.bold,
                )),
            RotatedBox(
              quarterTurns: isVisible == true ? 1 : 3,
              child: InkWell(
                  onTap: () async {
                    setState(() {
                      if (isVisible) {
                        isVisible = false;
                      } else if (isVisible == false) {
                        isVisible = true;
                      }
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    setState(() {});
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: isVisible == true ? widget.titleColor : Colors.black,
                  )),
            )
          ],
        ),
        Visibility(
          visible: isVisible,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SizedBox(
              height: widget.height ?? 100,
              width: double.maxFinite,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.children),
            ), //
          ),
        ),
      ],
    );
  }
}
