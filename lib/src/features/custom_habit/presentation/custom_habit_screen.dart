import 'package:flutter/material.dart';
import 'package:habit/src/common/resources/asset_manager.dart';
import 'package:habit/src/common/resources/value_manager.dart';
import 'package:habit/src/common/widgets/svg_widget/svg_widget.dart';
import 'package:habit/src/common/widgets/text_form_field_widget/text_form_field_widget.dart';

class CustomHabitScreen extends StatelessWidget {
  static const path = '/custom-habit';
  static const name = 'custom-habit';
  const CustomHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Column(
              children: [
                TextFormFieldWidget(
                  controller: TextEditingController(),
                  borderCoder: Theme.of(context).colorScheme.secondary,
                  hintText: 'Name',
                  textStyle: Theme.of(context).textTheme.titleMedium,
                  focusBorderCoder: Theme.of(context).colorScheme.secondary,
                ),
                Space.h16,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Icon and color',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Space.h8,
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: AppSize.s80,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(AppPadding.p8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
                                    color: Theme.of(context).colorScheme.secondary
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(AppPadding.p8),
                                    child: SVGWidget(svgPath: SVGManager.running, size: AppSize.s32, color: Theme.of(context).colorScheme.onSurface,),
                                  ),
                                ),
                              ),
                              Space.w12,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        'Walking',
                                      style: Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    Space.h4,
                                    Text(
                                      'icon',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                        color: Theme.of(context).colorScheme.onSecondary
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Space.w8,
                    Expanded(
                      child: Container(
                        height: AppSize.s80,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(AppPadding.p8),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Walking',
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  Space.h8,
                                  Text(
                                    'icon',
                                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                        color: Theme.of(context).colorScheme.onSecondary
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
