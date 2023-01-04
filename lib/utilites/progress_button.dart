import 'package:flutter/material.dart';

import '../page/login/page/login_form.dart';

class ProgressButton extends AnimatedWidget {
  final Color textColor;
  final Color progressColor;
  final Color bgColor;
  final String text;
  final String progressText;
  final ProgressController progressController;
  final Function onTap;
  ProgressButtonStatus? progressButtonStatus = ProgressButtonStatus();

  ProgressButton(
      {Key? key,
      required this.textColor,
      required this.progressColor,
      required this.bgColor,
      required this.text,
      required this.progressText,
      required this.progressController,
      required this.onTap,
      this.progressButtonStatus})
      : super(listenable: progressController);

  @override
  Widget build(BuildContext context) => _buildButton(context);

  Widget _buildButton(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(Dimen.input_control_radius),
      color: bgColor.withOpacity(_bagColor(progressButtonStatus)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        child: progressController.activeStatus
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        progressText,
                        style: Theme.of(context).textTheme.button!.copyWith(color: progressColor),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        height: 16,
                        width: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(progressColor),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.button!.copyWith(color: progressColor),
                  textAlign: TextAlign.center,
                ),
              ),
        onTap: () {
          if (!progressController.activeStatus && _isActive(progressButtonStatus)) {
            onTap();
          }
        },
      ),
    );
  }

  double _bagColor(ProgressButtonStatus? status) {
    return status == null
        ? 1.0
        : status.activeStatus
            ? 1
            : 0.7;
  }

  bool _isActive(ProgressButtonStatus? status) {
    return status == null ? true : status.activeStatus;
  }
}

class ProgressController extends ChangeNotifier {
  ProgressController({initialVal: false}) {
    _isLoading = initialVal;
  }
  bool _isLoading = false;

  bool get initialStatus => false;
  bool get activeStatus => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}

class ProgressButtonStatus extends ChangeNotifier {
  ProgressButtonStatus({initialVal: true}) {
    _isActive = initialVal;
  }
  bool _isActive = false;

  bool get initialActiveStatus => true;
  bool get activeStatus => _isActive;
  set isActive(bool value) {
    _isActive = value;
    notifyListeners();
  }
}
