{
  withChapAuthDiscovery(chapAuthDiscovery): { chapAuthDiscovery: chapAuthDiscovery },
  withChapAuthSession(chapAuthSession): { chapAuthSession: chapAuthSession },
  withFsType(fsType): { fsType: fsType },
  withInitiatorName(initiatorName): { initiatorName: initiatorName },
  withIqn(iqn): { iqn: iqn },
  withIscsiInterface(iscsiInterface): { iscsiInterface: iscsiInterface },
  withLun(lun): { lun: lun },
  withPortals(portals): { portals: if std.isArray(v=portals) then portals else [portals] },
  withPortalsMixin(portals): { portals+: if std.isArray(v=portals) then portals else [portals] },
  withReadOnly(readOnly): { readOnly: readOnly },
  withSecretRef(secretRef): { secretRef: secretRef },
  withTargetPortal(targetPortal): { targetPortal: targetPortal },
  mixin: self
}