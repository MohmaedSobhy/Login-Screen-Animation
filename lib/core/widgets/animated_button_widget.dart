import 'package:flutter/material.dart';

class AnimatedButttonSelection extends StatelessWidget {
  final VoidCallback firstTab;
  final VoidCallback secondTab;
  final String firstTabTitle;
  final String secondTabTitle;
  final int currentTab;
  final double paddingWidth;
  const AnimatedButttonSelection({
    super.key,
    required this.firstTab,
    required this.secondTab,
    required this.currentTab,
    required this.firstTabTitle,
    required this.secondTabTitle,
    this.paddingWidth = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          AnimatedPositionedDirectional(
            end:
                (currentTab != 0)
                    ? 0
                    : (MediaQuery.sizeOf(context).width - paddingWidth) / 2,
            duration: Duration(milliseconds: 200),
            child: Container(
              width: (MediaQuery.of(context).size.width - paddingWidth) / 2,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: firstTab,
                  child: AnimatedContainer(
                    alignment: AlignmentDirectional.center,
                    duration: Duration(milliseconds: 200),
                    child: Text(
                      firstTabTitle,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: (currentTab == 0) ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: secondTab,
                  child: AnimatedContainer(
                    alignment: AlignmentDirectional.center,
                    duration: Duration(milliseconds: 200),
                    child: Text(
                      secondTabTitle,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: (currentTab == 1) ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
