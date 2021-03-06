import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

class BootstrapButton extends StatefulWidget {
  const BootstrapButton({ Key key }) : super(key: key);

  @override
  _BootstrapButtonState createState() => _BootstrapButtonState();
}

class _BootstrapButtonState extends State<BootstrapButton> {

  bool disabled = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          OverlayDropdownButton.removeAll();
        },
        child: Scaffold(
            appBar: AppBar(title: Text('Bootstraps Buttons')),
            body: Scrollbar(child: SingleChildScrollView(
              child: Container(
                height: 2000,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BsRow(
                      children: [
                        BsCol(
                          margin: EdgeInsets.only(bottom: 10.0),
                          sizes: ColScreen.all(Col.col_12),
                          child: Wrap(
                            children: [
                              BsButton(
                                disabled: disabled,
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                prefixIcon: Icons.block,
                                label: Text('Primary'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {
                                  setState(() {
                                    disabled = disabled ? false : true;
                                  });
                                },
                                style: BsButtonStyle.primary,
                                prefixIcon: Icons.block,
                                label: Text('${disabled ? 'Enable' : 'Disabled'} Button'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                prefixIcon: Icons.block,
                                label: Text('Secondary'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.success,
                                prefixIcon: Icons.block,
                                label: Text('Success'),
                              ),
                              BsButton(
                                width: 900,
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.danger,
                                prefixIcon: Icons.block,
                                label: Text('Danger'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.warning,
                                prefixIcon: Icons.block,
                                label: Text('Warning'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.info,
                                prefixIcon: Icons.block,
                                label: Text('Info'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.light,
                                prefixIcon: Icons.block,
                                label: Text('Light'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.dark,
                                prefixIcon: Icons.block,
                                label: Text('Dark'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(bottom: 10.0),
                                onPressed: () {},
                                size: BsButtonSize.btnIconMd,
                                prefixIcon: Icons.check,
                              )
                            ],
                          ),
                        ),
                        BsCol(
                          margin: EdgeInsets.only(bottom: 10.0),
                          sizes: ColScreen.all(Col.col_12),
                          child: Wrap(
                            children: [
                              BsButton(
                                disabled: disabled,
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlinePrimary,
                                label: Text('Outline Primary'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineSecondary,
                                label: Text('Outline Secondary'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineSuccess,
                                label: Text('Outline Success'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineDanger,
                                label: Text('Outline Danger'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineInfo,
                                label: Text('Outline Info'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineLight,
                                label: Text('Outline Light'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.outlineDark,
                                label: Text('Outline Dark'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle(
                                    borderRadius: BorderRadius.circular(50.0),
                                    backgroundColor: Colors.blue,
                                    color: Colors.white
                                ),
                                label: Text('Outline Dark'),
                              ),
                            ],
                          ),
                        ),
                        BsCol(
                          margin: EdgeInsets.only(bottom: 10.0),
                          sizes: ColScreen.all(Col.col_12),
                          child: Wrap(
                            children: [
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnSm,
                                label: Text('Small'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                label: Text('Medium'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnLg,
                                label: Text('Large'),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnIconSm,
                                prefixIcon: Icons.check,
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnIconMd,
                                prefixIcon: Icons.check,
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnIconLg,
                                prefixIcon: Icons.check,
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnSm,
                                label: Text('Small'),
                                prefixIcon: Icons.calendar_today,
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                label: Text('Medium'),
                                prefixIcon: Icons.calendar_today,
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnLg,
                                label: Text('Large'),
                                prefixIcon: Icons.calendar_today,
                              ),
                            ],
                          ),
                        ),
                        BsCol(
                          margin: EdgeInsets.only(bottom: 10.0),
                          sizes: ColScreen.all(Col.col_12),
                          child: Wrap(
                            children: [
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnSm,
                                label: Text('Small'),
                                prefixIcon: Icons.edit,
                                badge: BsBadge(
                                  style: BsBadgeStyle.info,
                                  size: BsBadgeSize.small,
                                  child: Text('4'),
                                ),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnMd,
                                label: Text('Notification'),
                                prefixIcon: Icons.calendar_today,
                                badge: BsBadge(
                                  style: BsBadgeStyle.warning,
                                  child: Text('4'),
                                ),
                              ),
                              BsButton(
                                margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                                onPressed: () {},
                                style: BsButtonStyle.primary,
                                size: BsButtonSize.btnLg,
                                label: Text('Notification'),
                                prefixIcon: Icons.calendar_today,
                                badge: BsBadge(
                                  style: BsBadgeStyle.success,
                                  size: BsBadgeSize.large,
                                  child: Text('4'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        BsCol(
                          sizes: ColScreen.all(Col.col_12),
                          child: Wrap(
                            children: [
                              BsDropdownButton(
                                margin: EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  suffixIcon: Icons.arrow_drop_down,
                                  label: Text('Bottom'),
                                ),
                                dropdownDirection: BsDropdownDirection.bottom,
                                dropdownMenuSize: BsDropdownMenuSize(
                                  minWidth: 500,
                                ),
                                dropdownMenu: BsDropdownMenu(
                                  children: [
                                    BsDropdownItem(child: Text('Action')),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here')),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link')),
                                  ],
                                ),
                              ),
                              BsDropdownButton(
                                margin: EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  suffixIcon: Icons.arrow_drop_down,
                                  label: Text('Top'),
                                ),
                                dropdownDirection: BsDropdownDirection.top,
                                dropdownMenu: BsDropdownMenu(
                                  header: BsDropdownHeader(child: Text('Dropdown Header')),
                                  children: [
                                    BsDropdownItem(child: Text('Action')),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here')),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link')),
                                  ],
                                ),
                              ),
                              BsDropdownButton(
                                margin: EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  suffixIcon: Icons.arrow_right,
                                  label: Text('Right'),
                                ),
                                dropdownDirection: BsDropdownDirection.right,
                                dropdownMenu: BsDropdownMenu(
                                  children: [
                                    BsDropdownItem(child: Text('Action')),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here')),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link')),
                                  ],
                                ),
                              ),
                              BsDropdownButton(
                                margin: EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  prefixIcon: Icons.arrow_left,
                                  label: Text('Left'),
                                ),
                                dropdownDirection: BsDropdownDirection.left,
                                dropdownMenu: BsDropdownMenu(
                                  children: [
                                    BsDropdownItem(child: Text('Action')),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here')),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link')),
                                  ],
                                ),
                              ),
                              BsDropdownButton(
                                margin: EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  suffixIcon: Icons.arrow_right,
                                  label: Text('Horizontal'),
                                ),
                                dropdownDirection: BsDropdownDirection.horizontal,
                                dropdownMenu: BsDropdownMenu(
                                  children: [
                                    BsDropdownItem(child: Text('Action')),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here')),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link')),
                                  ],
                                ),
                              ),
                              BsDropdownButton(
                                margin: EdgeInsets.only(right: 5.0),
                                toggleMenu: (_) => BsButton(
                                  onPressed: () => _.toggle(),
                                  style: BsButtonStyle.primary,
                                  suffixIcon: Icons.arrow_drop_down,
                                  label: Text('Vertical'),
                                ),
                                dropdownDirection: BsDropdownDirection.vertical,
                                dropdownMenu: BsDropdownMenu(
                                  children: [
                                    BsDropdownItem(child: Text('Action'), active: true),
                                    BsDropdownItem(child: Text('Another Action')),
                                    BsDropdownItem(child: Text('Something else here'), disabled: true),
                                    BsDropdownDivider(),
                                    BsDropdownItem(child: Text('Separate link')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Scrollbar(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(top: 10.0),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      BsDropdownButton(
                                        margin: EdgeInsets.only(right: 5.0),
                                        toggleMenu: (_) => BsButton(
                                          onPressed: () => _.toggle(),
                                          style: BsButtonStyle.primary,
                                          suffixIcon: Icons.arrow_drop_down,
                                          label: Text('Vertical'),
                                        ),
                                        dropdownDirection: BsDropdownDirection.vertical,
                                        dropdownMenu: BsDropdownMenu(
                                          children: [
                                            BsDropdownItem(child: Text('Action')),
                                            BsDropdownItem(child: Text('Another Action')),
                                            BsDropdownItem(child: Text('Something else here')),
                                            BsDropdownDivider(),
                                            BsDropdownItem(child: Text('Separate link')),
                                          ],
                                        ),
                                      ),
                                      BsDropdownButton(
                                        margin: EdgeInsets.only(left: 1500, right: 1500),
                                        toggleMenu: (_) => BsButton(
                                          onPressed: () => _.toggle(),
                                          style: BsButtonStyle.primary,
                                          suffixIcon: Icons.arrow_drop_down,
                                          label: Text('Horizontal Buttons'),
                                        ),
                                        dropdownDirection: BsDropdownDirection.horizontal,
                                        dropdownMenu: BsDropdownMenu(
                                          children: [
                                            BsDropdownItem(child: Text('Action')),
                                            BsDropdownItem(child: Text('Another Action')),
                                            BsDropdownItem(child: Text('Something else here')),
                                            BsDropdownDivider(),
                                            BsDropdownItem(child: Text('Separate link')),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
        ),
      ),
    );
  }
}