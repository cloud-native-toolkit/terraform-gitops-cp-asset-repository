module "gitops_module" {
  source = "./module"

  depends_on = [module.cp4i-dependencies]

  gitops_config = module.gitops.gitops_config
  git_credentials = module.gitops.git_credentials
  server_name = module.gitops.server_name
  #namespace = module.gitops_namespace.name
  # Asset Repository must be deployed in same namespace where Platfrom Navigator is deployed
  namespace = var.platform-navigator-namespace
  kubeseal_cert = module.gitops.sealed_secrets_cert
  # Added below this line - Anand Awasthi -- To be updated with dependencies for assetrepo and od
  catalog = module.cp_catalogs.catalog_ibmoperators
  channel = module.cp4i-dependencies.asset_repository.channel
  #channel = "v1.4"
  instance_version = module.cp4i-dependencies.asset_repository.version
  #instance_version = "2021.4.1"
  license = module.cp4i-dependencies.asset_repository.license
  #license = "L-PNAA-C68928"
  entitlement_key = module.cp_catalogs.entitlement_key
  cp_entitlement_key = module.cp_catalogs.entitlement_key
  filestorageclass = var.filestorageclass
  blockstorageclass = var.blockstorageclass
}
