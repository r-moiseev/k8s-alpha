{
  // new returns an instance of Replicaset
  new(name): {
    apiVersion: 'apps/v1beta2',
    kind: 'ReplicaSet'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}