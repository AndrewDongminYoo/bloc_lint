import 'package:bloc_lint/lint_rules/avoid_public_methods_on_bloc_lint_rule.dart';
import 'package:bloc_lint/lint_rules/avoid_public_properties_on_bloc_and_cubit_lint_rule.dart';
import 'package:bloc_lint/lint_rules/prefer_multi_bloc_listener_lint_rule.dart';
import 'package:bloc_lint/lint_rules/prefer_multi_bloc_provider_lint_rule.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

PluginBase createPlugin() => _BlocLintPlugin();

class _BlocLintPlugin extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        const AvoidPublicMethodsOnBlocLintRule(),
        const AvoidPublicPropertiesOnBlocAndCubitLintRule(),
        const PreferMultiBlocListenerLintRule(),
        const PreferMultiBlocProviderLintRule(),
      ];
}
