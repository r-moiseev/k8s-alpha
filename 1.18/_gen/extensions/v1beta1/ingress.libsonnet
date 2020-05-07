{
  // new returns an instance of Ingress
  new(name): {
    apiVersion: 'extensions/v1beta1',
    kind: 'Ingress'
  } + self.metadata.withName(name=name),
  // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
  metadata: {
    withAnnotations(annotations): { metadata+: { annotations: annotations } },
    withAnnotationsMixin(annotations): { metadata+: { annotations+: annotations } },
    withClusterName(clusterName): { metadata+: { clusterName: clusterName } },
    withCreationTimestamp(creationTimestamp): { metadata+: { creationTimestamp: creationTimestamp } },
    withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } },
    withDeletionTimestamp(deletionTimestamp): { metadata+: { deletionTimestamp: deletionTimestamp } },
    withFinalizers(finalizers): { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withFinalizersMixin(finalizers): { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withGenerateName(generateName): { metadata+: { generateName: generateName } },
    withGeneration(generation): { metadata+: { generation: generation } },
    withLabels(labels): { metadata+: { labels: labels } },
    withLabelsMixin(labels): { metadata+: { labels+: labels } },
    withManagedFields(managedFields): { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withManagedFieldsMixin(managedFields): { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withName(name): { metadata+: { name: name } },
    withNamespace(namespace): { metadata+: { namespace: namespace } },
    withOwnerReferences(ownerReferences): { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withOwnerReferencesMixin(ownerReferences): { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withResourceVersion(resourceVersion): { metadata+: { resourceVersion: resourceVersion } },
    withSelfLink(selfLink): { metadata+: { selfLink: selfLink } },
    withUid(uid): { metadata+: { uid: uid } }
  },
  // IngressSpec describes the Ingress the user wishes to exist.
  spec: {
    // IngressBackend describes all endpoints for a given service and port.
    backend: {
      // TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
      resource: {
        withApiGroup(apiGroup): { spec+: { backend+: { resource+: { apiGroup: apiGroup } } } },
        withKind(kind): { spec+: { backend+: { resource+: { kind: kind } } } },
        withName(name): { spec+: { backend+: { resource+: { name: name } } } }
      },
      withServiceName(serviceName): { spec+: { backend+: { serviceName: serviceName } } },
      withServicePort(servicePort): { spec+: { backend+: { servicePort: servicePort } } }
    },
    withIngressClassName(ingressClassName): { spec+: { ingressClassName: ingressClassName } },
    withRules(rules): { spec+: { rules: if std.isArray(v=rules) then rules else [rules] } },
    withRulesMixin(rules): { spec+: { rules+: if std.isArray(v=rules) then rules else [rules] } },
    withTls(tls): { spec+: { tls: if std.isArray(v=tls) then tls else [tls] } },
    withTlsMixin(tls): { spec+: { tls+: if std.isArray(v=tls) then tls else [tls] } }
  },
  mixin: self
}