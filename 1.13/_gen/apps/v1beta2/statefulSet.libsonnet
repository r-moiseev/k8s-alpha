{
  // new returns an instance of Statefulset
  new(name): {
    apiVersion: 'apps/v1beta2',
    kind: 'StatefulSet'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withSpec(spec): { spec: spec },
  mixin: self
}