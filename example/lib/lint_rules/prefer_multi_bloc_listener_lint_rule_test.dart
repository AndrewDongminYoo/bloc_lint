import 'package:bloc_lint_example/sample_cubit/cubit_a_cubit.dart';
import 'package:bloc_lint_example/sample_cubit/cubit_b_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocListener<ACubit, AState>(
    listener: (BuildContext context, state) {},
    // expect_lint: prefer_multi_bloc_listener
    child: BlocListener<BCubit, BState>(
      listener: (BuildContext context, state) {},
    ),
  );

  MultiBlocListener(
    listeners: [
      BlocListener<ACubit, AState>(
        listener: (BuildContext context, state) {},
      ),
      BlocListener<BCubit, BState>(
        listener: (BuildContext context, state) {},
      ),
    ],
    child: Container(),
  );
}
