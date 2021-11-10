package accurics

##ruleName PolarDBSQLVersionError
##policyType alicloud
##resourceType alicloud_polardb_cluster

PolarDBSQLVersionError[input.alicloud_polardb_cluster[_].id] {
	not PolarDBSQLVersionIsRight
}

PolarDBSQLVersionIsRight {
    polardb := input.alicloud_polardb_cluster[_]
    SQLVersion := {"MySQL","Oracle","PostgreSQL"}
    config := polardb.config
    some i
    config.db_type == SQLVersion[i]
}