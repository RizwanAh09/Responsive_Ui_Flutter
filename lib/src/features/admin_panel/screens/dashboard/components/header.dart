import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/responsive.dart';
import 'package:flutter_admin_panel/src/features/admin_panel/controllers/menu_controller.dart';
import 'package:get/get.dart';
import '../../../../../constants/constants.dart';

class Header extends StatelessWidget {
  Header({
    Key? key,
  }) : super(key: key);

  final menuController = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
              onPressed: () => menuController.controlMenu(),
              icon: const Icon(Icons.menu)),
        if (!Responsive.isMobile(context))
          Text("Dashboard", style: Theme.of(context).textTheme.headline6),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const Expanded(child: SearchField()),
        const ProfileCard()
      ],
    );
    //
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white10)),
      child: Row(
        children: [
          const Icon(Icons.person, size: 20),
          if (!Responsive.isMobile(context))
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text("Parvez Hindustan"),
            ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
            fillColor: secondaryColor,
            filled: true,
            hintText: "Search...",
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.search,
                  size: 20,
                ),
              ),
            )),
      ),
    );
  }
}
