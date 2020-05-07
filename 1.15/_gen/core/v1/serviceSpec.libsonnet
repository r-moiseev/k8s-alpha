{
  // SessionAffinityConfig represents the configurations of session affinity.
  sessionAffinityConfig: { clientIP: {
    withTimeoutSeconds(timeoutSeconds): { sessionAffinityConfig+: { clientIP+: { timeoutSeconds: timeoutSeconds } } }
  } },
  withClusterIP(clusterIP): { clusterIP: clusterIP },
  withExternalIPs(externalIPs): { externalIPs: if std.isArray(v=externalIPs) then externalIPs else [externalIPs] },
  withExternalIPsMixin(externalIPs): { externalIPs+: if std.isArray(v=externalIPs) then externalIPs else [externalIPs] },
  withExternalName(externalName): { externalName: externalName },
  withExternalTrafficPolicy(externalTrafficPolicy): { externalTrafficPolicy: externalTrafficPolicy },
  withHealthCheckNodePort(healthCheckNodePort): { healthCheckNodePort: healthCheckNodePort },
  withLoadBalancerIP(loadBalancerIP): { loadBalancerIP: loadBalancerIP },
  withLoadBalancerSourceRanges(loadBalancerSourceRanges): { loadBalancerSourceRanges: if std.isArray(v=loadBalancerSourceRanges) then loadBalancerSourceRanges else [loadBalancerSourceRanges] },
  withLoadBalancerSourceRangesMixin(loadBalancerSourceRanges): { loadBalancerSourceRanges+: if std.isArray(v=loadBalancerSourceRanges) then loadBalancerSourceRanges else [loadBalancerSourceRanges] },
  withPorts(ports): { ports: if std.isArray(v=ports) then ports else [ports] },
  withPortsMixin(ports): { ports+: if std.isArray(v=ports) then ports else [ports] },
  withPublishNotReadyAddresses(publishNotReadyAddresses): { publishNotReadyAddresses: publishNotReadyAddresses },
  withSelector(selector): { selector: selector },
  withSelectorMixin(selector): { selector+: selector },
  withSessionAffinity(sessionAffinity): { sessionAffinity: sessionAffinity },
  withType(type): { type: type },
  mixin: self
}