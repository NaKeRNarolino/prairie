import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prairie/theme/default_color_scheme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final interFont = GoogleFonts.inter();
    final jbMonoFont = GoogleFonts.jetBrainsMono();
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final ButtonStyle gridElementStyle = ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
            backgroundColor: const WidgetStatePropertyAll(container),
            padding: WidgetStatePropertyAll(EdgeInsets.only(
                top: constraints.maxWidth * 0.065,
                left: constraints.maxWidth * 0.035,
                right: constraints.maxWidth * 0.035)));
        if (constraints.maxWidth > 750) {
          return Scaffold(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              appBar: AppBar(
                title: Text(
                  "Prairie",
                  style: interFont.copyWith(fontWeight: FontWeight.w700),
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                backgroundColor: Theme.of(context).colorScheme.surface,
                foregroundColor: Theme.of(context).colorScheme.onSurface,
                toolbarHeight: 45,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  )
                ],
              ),
              body: Column(
                children: [
                  const Gap(16.0),
                  Expanded(
                    child: Container(
                      width: constraints.maxWidth,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0))),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                HomeScreenProjectsText.slim(
                                  constraints: constraints,
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      FilledButton(
                                        style: gridElementStyle.copyWith(
                                            fixedSize: WidgetStatePropertyAll(
                                                Size(
                                                    constraints.maxWidth * 0.65,
                                                    constraints.maxWidth *
                                                        0.6)),
                                            padding: WidgetStatePropertyAll(
                                                EdgeInsets.symmetric(
                                                    horizontal:
                                                        constraints.maxWidth *
                                                            0.05,
                                                    vertical:
                                                        constraints.maxWidth *
                                                            0.05))),
                                        child: Row(
                                          children: [
                                            // Gap(constraints.maxWidth * 0.05),
                                            false
                                                ? Placeholder()
                                                : Container(
                                                    decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .tertiary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0)),
                                                    //
                                                    height:
                                                        constraints.maxWidth *
                                                            0.25,
                                                    width:
                                                        constraints.maxWidth *
                                                            0.25,
                                                  ),
                                            Gap(constraints.maxWidth * 0.1),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Last Project"
                                                        .toUpperCase(),
                                                    style: theme
                                                        .textTheme.labelSmall
                                                        ?.copyWith(
                                                            color: theme
                                                                .colorScheme
                                                                .onSurface),
                                                    textAlign: TextAlign.end,
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Some weird project",
                                                          style: theme.textTheme
                                                              .headlineSmall
                                                              ?.copyWith(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onSurface),
                                                          textAlign:
                                                              TextAlign.end,
                                                        ),
                                                        Text(
                                                          "lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                                          style: theme.textTheme
                                                              .headlineSmall
                                                              ?.copyWith(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onSurface),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 16.0, right: 16.0),
                                          child: CustomScrollView(
                                            slivers: [
                                              SliverGrid.builder(
                                                  gridDelegate:
                                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 2,
                                                          childAspectRatio:
                                                              0.85,
                                                          mainAxisSpacing: 16.0,
                                                          crossAxisSpacing:
                                                              16.0),
                                                  itemBuilder:
                                                      (context, index) {
                                                    return HomeProjectButton
                                                        .slim(
                                                      gridElementStyle:
                                                          gridElementStyle,
                                                      constraints: constraints,
                                                    );
                                                  })
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: constraints.maxHeight * 0.1,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Theme.of(context)
                                      .colorScheme
                                      .surface
                                      .withOpacity(0),
                                  Theme.of(context)
                                      .colorScheme
                                      .surface
                                      .withOpacity(0.75)
                                ])),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ));
        } else {
          return Scaffold(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              appBar: AppBar(
                title: Text(
                  "Prairie",
                  style: interFont.copyWith(fontWeight: FontWeight.w700),
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                backgroundColor: Theme.of(context).colorScheme.surface,
                foregroundColor: Theme.of(context).colorScheme.onSurface,
                toolbarHeight: 45,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  )
                ],
              ),
              body: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Gap(constraints.maxHeight * 0.191),
                          SvgPicture.asset(
                            "assets/vectors/home_bg.svg",
                            width: 350,
                            clipBehavior: Clip.hardEdge,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.none,
                            alignment: Alignment.topLeft,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      HomeScreenProjectsText(
                        constraints: constraints,
                      ),
                      const Gap(4.0),
                      Expanded(
                        child: Container(
                          width: constraints.maxWidth,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20.0))),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16.0, left: 16.0, right: 16.0),
                                child: CustomScrollView(
                                  slivers: [
                                    SliverToBoxAdapter(
                                      child: FilledButton(
                                        style: gridElementStyle.copyWith(
                                            fixedSize: WidgetStatePropertyAll(
                                                Size(
                                                    constraints.maxWidth * 0.5,
                                                    constraints.maxWidth *
                                                        0.45)),
                                            padding: WidgetStatePropertyAll(
                                                EdgeInsets.symmetric(
                                                    horizontal:
                                                        constraints.maxWidth *
                                                            0.05,
                                                    vertical:
                                                        constraints.maxWidth *
                                                            0.05))),
                                        child: Row(
                                          children: [
                                            // Gap(constraints.maxWidth * 0.05),
                                            false
                                                ? Placeholder()
                                                : Container(
                                                    decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .tertiary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0)),
                                                    //
                                                    height:
                                                        constraints.maxWidth *
                                                            0.35,
                                                    width:
                                                        constraints.maxWidth *
                                                            0.35,
                                                  ),
                                            Gap(constraints.maxWidth * 0.1),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Last Project"
                                                        .toUpperCase(),
                                                    style: theme
                                                        .textTheme.labelSmall
                                                        ?.copyWith(
                                                            color: theme
                                                                .colorScheme
                                                                .onSurface),
                                                    textAlign: TextAlign.end,
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Some weird project",
                                                          style: theme.textTheme
                                                              .headlineSmall
                                                              ?.copyWith(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onSurface),
                                                          textAlign:
                                                              TextAlign.end,
                                                        ),
                                                        Text(
                                                          "lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                                          style: theme.textTheme
                                                              .headlineSmall
                                                              ?.copyWith(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onSurface),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    const SliverGap(16.0),
                                    SliverGrid.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                childAspectRatio: 0.85,
                                                mainAxisSpacing: 16.0,
                                                crossAxisSpacing: 16.0),
                                        itemBuilder: (context, index) {
                                          return HomeProjectButton(
                                            gridElementStyle: gridElementStyle,
                                            constraints: constraints,
                                          );
                                        })
                                  ],
                                ),
                              ),
                              Container(
                                height: constraints.maxHeight * 0.1,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                      Theme.of(context)
                                          .colorScheme
                                          .surface
                                          .withOpacity(0),
                                      Theme.of(context)
                                          .colorScheme
                                          .surface
                                          .withOpacity(0.75)
                                    ])),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ));
        }
      },
    );
  }
}

class HomeProjectButton extends StatelessWidget {
  HomeProjectButton(
      {super.key, required this.gridElementStyle, required this.constraints});

  final ButtonStyle gridElementStyle;
  final BoxConstraints constraints;
  bool slim = false;

  HomeProjectButton.slim(
      {super.key, required this.gridElementStyle, required this.constraints}) {
    slim = true;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FilledButton(
      style: slim
          ? gridElementStyle.copyWith(
              padding: WidgetStatePropertyAll(EdgeInsets.only(
                  top: constraints.maxWidth * 0.001,
                  left: constraints.maxWidth * 0.005,
                  right: constraints.maxWidth * 0.005)))
          : gridElementStyle,
      child: Column(
        mainAxisAlignment:
            slim ? MainAxisAlignment.spaceAround : MainAxisAlignment.start,
        children: [
          false
              ? Placeholder()
              : (slim
                  ? Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius: BorderRadius.circular(8.0)),
                      //
                      height: constraints.maxWidth * 0.1,
                      width: constraints.maxWidth * 0.1,
                    )
                  : Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius: BorderRadius.circular(8.0)),
                      //
                      height: constraints.maxWidth * 0.35,
                      width: constraints.maxWidth * 0.35,
                    )),
          if (!slim) Gap(constraints.maxWidth * 0.025),
          Text(
            "Project Name",
            style: theme.textTheme.headlineSmall
                ?.copyWith(color: theme.colorScheme.onSurface),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}

class HomeScreenProjectsText extends StatelessWidget {
  HomeScreenProjectsText({super.key, required this.constraints}) {
    slim = false;
  }

  final BoxConstraints constraints;
  late bool slim;

  HomeScreenProjectsText.slim({super.key, required this.constraints}) {
    slim = true;
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle interFont = GoogleFonts.inter();
    return Column(
      children: [
        if (!slim) Gap(constraints.maxHeight * 0.2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Text(
                "Projects",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Gap(8.0),
              Padding(
                padding: EdgeInsets.only(top: constraints.maxHeight * 0.0025),
                child: FilledButton.icon(
                    onPressed: () {
                      context.push("/new_project");
                    },
                    label: Text("New",
                        style: interFont.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                    icon: const Icon(
                      Icons.add,
                      size: 20,
                    ),
                    style: ButtonStyle(
                        padding: const WidgetStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 4)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                        fixedSize: const WidgetStatePropertyAll(
                            Size(32 * 2.25, 16 * 2)),
                        maximumSize:
                            const WidgetStatePropertyAll(Size(100, 100)),
                        minimumSize: const WidgetStatePropertyAll(Size(0, 0)),
                        backgroundColor: WidgetStatePropertyAll(
                            Theme.of(context).colorScheme.tertiary))),
              )
            ],
          ),
        ),
        if (slim) const Gap(16.0),
      ],
    );
  }
}
