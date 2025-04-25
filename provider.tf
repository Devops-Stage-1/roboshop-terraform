provider "vault" {
  address         = "https://vault-internal.dkdevops.online:8200"
  skip_tls_verify = true
  token           = var.vault_token
}