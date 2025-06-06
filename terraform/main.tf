module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "services+faura-sandbox@faura.us"
    AccountName               = "sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "services+faura-sandbox@faura.us"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "Faura"
  }

  account_tags = {
    "account" = "sandbox"
    "managed" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Henry Wanjala"
    change_reason       = "Create Faura Sandbox Account using AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
