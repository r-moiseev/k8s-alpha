{
  // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
  metadata: {
    // Initializers tracks the progress of initialization.
    initializers: {
      // Status is a return value for calls that don't return other objects.
      result: {
        // StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
        details: {
          withCauses(causes): { metadata+: { initializers+: { result+: { details+: { causes: if std.isArray(v=causes) then causes else [causes] } } } } },
          withCausesMixin(causes): { metadata+: { initializers+: { result+: { details+: { causes+: if std.isArray(v=causes) then causes else [causes] } } } } },
          withGroup(group): { metadata+: { initializers+: { result+: { details+: { group: group } } } } },
          withKind(kind): { metadata+: { initializers+: { result+: { details+: { kind: kind } } } } },
          withName(name): { metadata+: { initializers+: { result+: { details+: { name: name } } } } },
          withRetryAfterSeconds(retryAfterSeconds): { metadata+: { initializers+: { result+: { details+: { retryAfterSeconds: retryAfterSeconds } } } } },
          withUid(uid): { metadata+: { initializers+: { result+: { details+: { uid: uid } } } } }
        },
        withCode(code): { metadata+: { initializers+: { result+: { code: code } } } },
        withKind(kind): { metadata+: { initializers+: { result+: { kind: kind } } } },
        withMessage(message): { metadata+: { initializers+: { result+: { message: message } } } },
        withMetadata(metadata): { metadata+: { initializers+: { result+: { metadata: metadata } } } },
        withReason(reason): { metadata+: { initializers+: { result+: { reason: reason } } } }
      },
      withPending(pending): { metadata+: { initializers+: { pending: if std.isArray(v=pending) then pending else [pending] } } },
      withPendingMixin(pending): { metadata+: { initializers+: { pending+: if std.isArray(v=pending) then pending else [pending] } } }
    },
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
  // PodSpec is a description of a pod.
  spec: {
    // Affinity is a group of affinity scheduling rules.
    affinity: {
      // Node affinity is a group of node affinity scheduling rules.
      nodeAffinity: {
        // A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
        requiredDuringSchedulingIgnoredDuringExecution: {
          withNodeSelectorTerms(nodeSelectorTerms): { spec+: { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } },
          withNodeSelectorTermsMixin(nodeSelectorTerms): { spec+: { affinity+: { nodeAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: { nodeSelectorTerms+: if std.isArray(v=nodeSelectorTerms) then nodeSelectorTerms else [nodeSelectorTerms] } } } } }
        },
        withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } },
        withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { affinity+: { nodeAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } }
      },
      // Pod affinity is a group of inter pod affinity scheduling rules.
      podAffinity: {
        withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } },
        withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { affinity+: { podAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } },
        withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } },
        withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { affinity+: { podAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } }
      },
      // Pod anti affinity is a group of inter pod anti affinity scheduling rules.
      podAntiAffinity: {
        withPreferredDuringSchedulingIgnoredDuringExecution(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } },
        withPreferredDuringSchedulingIgnoredDuringExecutionMixin(preferredDuringSchedulingIgnoredDuringExecution): { spec+: { affinity+: { podAntiAffinity+: { preferredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=preferredDuringSchedulingIgnoredDuringExecution) then preferredDuringSchedulingIgnoredDuringExecution else [preferredDuringSchedulingIgnoredDuringExecution] } } } },
        withRequiredDuringSchedulingIgnoredDuringExecution(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } },
        withRequiredDuringSchedulingIgnoredDuringExecutionMixin(requiredDuringSchedulingIgnoredDuringExecution): { spec+: { affinity+: { podAntiAffinity+: { requiredDuringSchedulingIgnoredDuringExecution+: if std.isArray(v=requiredDuringSchedulingIgnoredDuringExecution) then requiredDuringSchedulingIgnoredDuringExecution else [requiredDuringSchedulingIgnoredDuringExecution] } } } }
      }
    },
    // PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
    dnsConfig: {
      withNameservers(nameservers): { spec+: { dnsConfig+: { nameservers: if std.isArray(v=nameservers) then nameservers else [nameservers] } } },
      withNameserversMixin(nameservers): { spec+: { dnsConfig+: { nameservers+: if std.isArray(v=nameservers) then nameservers else [nameservers] } } },
      withOptions(options): { spec+: { dnsConfig+: { options: if std.isArray(v=options) then options else [options] } } },
      withOptionsMixin(options): { spec+: { dnsConfig+: { options+: if std.isArray(v=options) then options else [options] } } },
      withSearches(searches): { spec+: { dnsConfig+: { searches: if std.isArray(v=searches) then searches else [searches] } } },
      withSearchesMixin(searches): { spec+: { dnsConfig+: { searches+: if std.isArray(v=searches) then searches else [searches] } } }
    },
    // PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
    securityContext: {
      // SELinuxOptions are the labels to be applied to the container
      seLinuxOptions: {
        withLevel(level): { spec+: { securityContext+: { seLinuxOptions+: { level: level } } } },
        withRole(role): { spec+: { securityContext+: { seLinuxOptions+: { role: role } } } },
        withType(type): { spec+: { securityContext+: { seLinuxOptions+: { type: type } } } },
        withUser(user): { spec+: { securityContext+: { seLinuxOptions+: { user: user } } } }
      },
      withFsGroup(fsGroup): { spec+: { securityContext+: { fsGroup: fsGroup } } },
      withRunAsGroup(runAsGroup): { spec+: { securityContext+: { runAsGroup: runAsGroup } } },
      withRunAsNonRoot(runAsNonRoot): { spec+: { securityContext+: { runAsNonRoot: runAsNonRoot } } },
      withRunAsUser(runAsUser): { spec+: { securityContext+: { runAsUser: runAsUser } } },
      withSupplementalGroups(supplementalGroups): { spec+: { securityContext+: { supplementalGroups: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } } },
      withSupplementalGroupsMixin(supplementalGroups): { spec+: { securityContext+: { supplementalGroups+: if std.isArray(v=supplementalGroups) then supplementalGroups else [supplementalGroups] } } },
      withSysctls(sysctls): { spec+: { securityContext+: { sysctls: if std.isArray(v=sysctls) then sysctls else [sysctls] } } },
      withSysctlsMixin(sysctls): { spec+: { securityContext+: { sysctls+: if std.isArray(v=sysctls) then sysctls else [sysctls] } } }
    },
    withActiveDeadlineSeconds(activeDeadlineSeconds): { spec+: { activeDeadlineSeconds: activeDeadlineSeconds } },
    withAutomountServiceAccountToken(automountServiceAccountToken): { spec+: { automountServiceAccountToken: automountServiceAccountToken } },
    withContainers(containers): { spec+: { containers: if std.isArray(v=containers) then containers else [containers] } },
    withContainersMixin(containers): { spec+: { containers+: if std.isArray(v=containers) then containers else [containers] } },
    withDnsPolicy(dnsPolicy): { spec+: { dnsPolicy: dnsPolicy } },
    withEnableServiceLinks(enableServiceLinks): { spec+: { enableServiceLinks: enableServiceLinks } },
    withHostAliases(hostAliases): { spec+: { hostAliases: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] } },
    withHostAliasesMixin(hostAliases): { spec+: { hostAliases+: if std.isArray(v=hostAliases) then hostAliases else [hostAliases] } },
    withHostIPC(hostIPC): { spec+: { hostIPC: hostIPC } },
    withHostNetwork(hostNetwork): { spec+: { hostNetwork: hostNetwork } },
    withHostPID(hostPID): { spec+: { hostPID: hostPID } },
    withHostname(hostname): { spec+: { hostname: hostname } },
    withImagePullSecrets(imagePullSecrets): { spec+: { imagePullSecrets: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] } },
    withImagePullSecretsMixin(imagePullSecrets): { spec+: { imagePullSecrets+: if std.isArray(v=imagePullSecrets) then imagePullSecrets else [imagePullSecrets] } },
    withInitContainers(initContainers): { spec+: { initContainers: if std.isArray(v=initContainers) then initContainers else [initContainers] } },
    withInitContainersMixin(initContainers): { spec+: { initContainers+: if std.isArray(v=initContainers) then initContainers else [initContainers] } },
    withNodeName(nodeName): { spec+: { nodeName: nodeName } },
    withNodeSelector(nodeSelector): { spec+: { nodeSelector: nodeSelector } },
    withNodeSelectorMixin(nodeSelector): { spec+: { nodeSelector+: nodeSelector } },
    withPriority(priority): { spec+: { priority: priority } },
    withPriorityClassName(priorityClassName): { spec+: { priorityClassName: priorityClassName } },
    withReadinessGates(readinessGates): { spec+: { readinessGates: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] } },
    withReadinessGatesMixin(readinessGates): { spec+: { readinessGates+: if std.isArray(v=readinessGates) then readinessGates else [readinessGates] } },
    withRestartPolicy(restartPolicy): { spec+: { restartPolicy: restartPolicy } },
    withRuntimeClassName(runtimeClassName): { spec+: { runtimeClassName: runtimeClassName } },
    withSchedulerName(schedulerName): { spec+: { schedulerName: schedulerName } },
    withServiceAccount(serviceAccount): { spec+: { serviceAccount: serviceAccount } },
    withServiceAccountName(serviceAccountName): { spec+: { serviceAccountName: serviceAccountName } },
    withShareProcessNamespace(shareProcessNamespace): { spec+: { shareProcessNamespace: shareProcessNamespace } },
    withSubdomain(subdomain): { spec+: { subdomain: subdomain } },
    withTerminationGracePeriodSeconds(terminationGracePeriodSeconds): { spec+: { terminationGracePeriodSeconds: terminationGracePeriodSeconds } },
    withTolerations(tolerations): { spec+: { tolerations: if std.isArray(v=tolerations) then tolerations else [tolerations] } },
    withTolerationsMixin(tolerations): { spec+: { tolerations+: if std.isArray(v=tolerations) then tolerations else [tolerations] } },
    withVolumes(volumes): { spec+: { volumes: if std.isArray(v=volumes) then volumes else [volumes] } },
    withVolumesMixin(volumes): { spec+: { volumes+: if std.isArray(v=volumes) then volumes else [volumes] } }
  },
  mixin: self
}