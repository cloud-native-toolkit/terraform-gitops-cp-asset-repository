
variable "gitops_config" {
  type        = object({
    boostrap = object({
      argocd-config = object({
        project = string
        repo = string
        url = string
        path = string
      })
    })
    infrastructure = object({
      argocd-config = object({
        project = string
        repo = string
        url = string
        path = string
      })
      payload = object({
        repo = string
        url = string
        path = string
      })
    })
    services = object({
      argocd-config = object({
        project = string
        repo = string
        url = string
        path = string
      })
      payload = object({
        repo = string
        url = string
        path = string
      })
    })
    applications = object({
      argocd-config = object({
        project = string
        repo = string
        url = string
        path = string
      })
      payload = object({
        repo = string
        url = string
        path = string
      })
    })
  })
  description = "Config information regarding the gitops repo structure"
}

variable "git_credentials" {
  type = list(object({
    repo = string
    url = string
    username = string
    token = string
  }))
  description = "The credentials for the gitops repo(s)"
  sensitive   = true
}

variable "namespace" {
  type        = string
  description = "The namespace where the application should be deployed"
  default = "gitops-cp-platform-navigator"
}

variable "kubeseal_cert" {
  type        = string
  description = "The certificate/public key used to encrypt the sealed secrets"
  default     = ""
}

variable "server_name" {
  type        = string
  description = "The name of the server"
  default     = "default"
}

variable "cp_entitlement_key" {
  type        = string
  description = "The entitlement key required to access Cloud Pak images"
  sensitive   = true
}

// Variables added below this line for AssetRepo 

variable "subscription_namespace" {
  type        = string
  description = "The namespace where the application should be deployed"
  default     = "openshift-operators"
}

variable "entitlement_key" {
  type        = string
  description = "The entitlement key required to access Cloud Pak images"
  sensitive   = true
}

variable "channel" {
  type        = string
  description = "The channel from which the AssetRepository should be installed"
  default     = "v1.4"
}

variable "catalog" {
  type        = string
  description = "The catalog source that should be used to deploy the operator"
  default     = "ibm-operator-catalog"
}

variable "catalog_namespace" {
  type        = string
  description = "The namespace where the catalog has been deployed"
  default     = "openshift-marketplace"
}

variable "license" {
  type        = string
  description = "The license string that should be used for the instance"
  default     = "L-PNAA-C68928"
}

variable "instance_version" {
  type        = string
  description = "The version of the Asset Repository should be installed"
  default     = ""
}

variable "replica_count" {
  type        = number
  description = "The number of replicas to create for the asset repository"
  default     = 1
}

variable "filestorageclass" {
  type = string
  description = "For assetDataVolume we need RWX volume."
  
  default="portworx-rwx-gp-sc"
  
}

variable "blockstorageclass" {
  type = string
  description = "For assetDataVolume we need RWO volume."
 
  default="portworx-db2-rwo-sc"
  
}

variable "platform-navigator-namespace" {
  type = string
  description = "The namespace where Platform Navigator is deployed"
  default="gitops-cp-platformnavigator"
  
}
