
variable "key_name" {
    description   = "Name to give to SSH key"
    type          = string
    default       = ""
}

variable "name_prefix" {
    description   = "Prefix for SSH key name (if blank, needs key_name variable defined)"
    type          = string
    default       = ""
}

variable "resource_group_name" {
    description = "Resource group name if storing the SSH keys in Azure vault."
    default = ""
}

variable "region" {
    description = "Location to store key"
    default = ""
}

variable "store_path" {
    description = "Path to directory in which to store keys (will default to current working directory)"
    type        = string
    default     = ""
}

variable "public_file_permissions" {
    description = "Permissions to be set on public key files (default = 0600)"
    type        = string
    default     = "0600"
}

variable "private_file_permissions" {
    description = "Permissions to be set on public key files (default = 0400)"
    type        = string
    default     = "0400"
}

variable "store_key_in_vault" {
    description   = "Flag to storage the generated or supplied key in the Azure vault"
    type          = bool
    default       = true
}

variable "ssh_key" {
    description   = "Path to existing public key to be used. Will be created if empty. (Default empty string)"
    type          = string
    default       = ""
}

variable "algorithm" {
    description = "Algorithim to be utilized if creating a new key (RSA, ECDSA or ED25519, default = RSA)"
    type        = string
    default     = "RSA"
}

variable "rsa_bits" {
    description = "Number of bits to use for RSA key (default = 4096)"
    type        = number
    default     = 4096
}

variable "ecdsa_curve" {
    description = "ECDSA Curve value to be utilized for ECDSA key (P224, P256, P521, default = P224)"
    type        = string
    default     = "P224"
}

variable "tags" {
    description = "Extra tags to be added to the Azure Vault entry (default = none)"
    type        = map(string)
    default     = {}
}