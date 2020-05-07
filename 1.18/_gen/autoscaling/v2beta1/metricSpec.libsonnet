{
  // ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster). Exactly one "target" type should be set.
  external: {
    // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
    metricSelector: {
      withMatchExpressions(matchExpressions): { external+: { metricSelector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchExpressionsMixin(matchExpressions): { external+: { metricSelector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchLabels(matchLabels): { external+: { metricSelector+: { matchLabels: matchLabels } } },
      withMatchLabelsMixin(matchLabels): { external+: { metricSelector+: { matchLabels+: matchLabels } } }
    },
    withMetricName(metricName): { external+: { metricName: metricName } },
    withTargetAverageValue(targetAverageValue): { external+: { targetAverageValue: targetAverageValue } },
    withTargetValue(targetValue): { external+: { targetValue: targetValue } }
  },
  // ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  object: {
    // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
    selector: {
      withMatchExpressions(matchExpressions): { object+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchExpressionsMixin(matchExpressions): { object+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchLabels(matchLabels): { object+: { selector+: { matchLabels: matchLabels } } },
      withMatchLabelsMixin(matchLabels): { object+: { selector+: { matchLabels+: matchLabels } } }
    },
    // CrossVersionObjectReference contains enough information to let you identify the referred resource.
    target: {
      withKind(kind): { object+: { target+: { kind: kind } } },
      withName(name): { object+: { target+: { name: name } } }
    },
    withAverageValue(averageValue): { object+: { averageValue: averageValue } },
    withMetricName(metricName): { object+: { metricName: metricName } },
    withTargetValue(targetValue): { object+: { targetValue: targetValue } }
  },
  // PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
  pods: {
    // A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
    selector: {
      withMatchExpressions(matchExpressions): { pods+: { selector+: { matchExpressions: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchExpressionsMixin(matchExpressions): { pods+: { selector+: { matchExpressions+: if std.isArray(v=matchExpressions) then matchExpressions else [matchExpressions] } } },
      withMatchLabels(matchLabels): { pods+: { selector+: { matchLabels: matchLabels } } },
      withMatchLabelsMixin(matchLabels): { pods+: { selector+: { matchLabels+: matchLabels } } }
    },
    withMetricName(metricName): { pods+: { metricName: metricName } },
    withTargetAverageValue(targetAverageValue): { pods+: { targetAverageValue: targetAverageValue } }
  },
  // ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
  resource: {
    withName(name): { resource+: { name: name } },
    withTargetAverageUtilization(targetAverageUtilization): { resource+: { targetAverageUtilization: targetAverageUtilization } },
    withTargetAverageValue(targetAverageValue): { resource+: { targetAverageValue: targetAverageValue } }
  },
  withType(type): { type: type },
  mixin: self
}