{
  allowedCSIDriver: (import 'allowedCSIDriver.libsonnet'),
  allowedFlexVolume: (import 'allowedFlexVolume.libsonnet'),
  allowedHostPath: (import 'allowedHostPath.libsonnet'),
  eviction: (import 'eviction.libsonnet'),
  fsGroupStrategyOptions: (import 'fsGroupStrategyOptions.libsonnet'),
  hostPortRange: (import 'hostPortRange.libsonnet'),
  idRange: (import 'idRange.libsonnet'),
  podDisruptionBudget: (import 'podDisruptionBudget.libsonnet'),
  podDisruptionBudgetSpec: (import 'podDisruptionBudgetSpec.libsonnet'),
  podDisruptionBudgetStatus: (import 'podDisruptionBudgetStatus.libsonnet'),
  podSecurityPolicy: (import 'podSecurityPolicy.libsonnet'),
  podSecurityPolicySpec: (import 'podSecurityPolicySpec.libsonnet'),
  runAsGroupStrategyOptions: (import 'runAsGroupStrategyOptions.libsonnet'),
  runAsUserStrategyOptions: (import 'runAsUserStrategyOptions.libsonnet'),
  runtimeClassStrategyOptions: (import 'runtimeClassStrategyOptions.libsonnet'),
  seLinuxStrategyOptions: (import 'seLinuxStrategyOptions.libsonnet'),
  supplementalGroupsStrategyOptions: (import 'supplementalGroupsStrategyOptions.libsonnet')
}