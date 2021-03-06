---
permalink: /1.15/apps/v1beta1/statefulSetUpdateStrategy/
---

# package statefulSetUpdateStrategy

StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.

## Index

* [`fn withType(type)`](#fn-withtype)
* [`obj rollingUpdate`](#obj-rollingupdate)
  * [`fn withPartition(partition)`](#fn-rollingupdatewithpartition)

## Fields

### fn withType

```ts
withType(type)
```

Type indicates the type of the StatefulSetUpdateStrategy.

## obj rollingUpdate

RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.

### fn rollingUpdate.withPartition

```ts
withPartition(partition)
```

Partition indicates the ordinal at which the StatefulSet should be partitioned.