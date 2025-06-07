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

# Development Faura Property Self Assessment Account
module "dev_property_self_assessment" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "services+dev-property-self-assessment@faura.us"
    AccountName               = "dev-property-self-assessment"
    ManagedOrganizationalUnit = "Development (ou-o30i-30uyyvzp)"
    SSOUserEmail              = "services+dev-property-self-assessment@faura.us"
    SSOUserFirstName          = "Development"
    SSOUserLastName           = "Property Assessment"
  }

  account_tags = {
    "account"     = "dev-property-selft-assessment"
    "managed"     = "AFT"
    "environment" = "development"
    "application" = "faura-property-self-assessment"
  }

  change_management_parameters = {
    change_requested_by = "Henry Wanjala"
    change_reason       = "Development Faura Property Self Assessment Account using AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group        = "development"
  }

  account_customizations_name = "dev-property-self-assessment"
}

# Staging Faura Property Self Assessment Account
module "staging_property_self_assessment" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "services+staging-property-self-assessment@faura.us"
    AccountName               = "staging-property-self-assessment"
    ManagedOrganizationalUnit = "Staging (ou-o30i-zyk8ez93)"
    SSOUserEmail              = "services+staging-property-self-assessment@faura.us"
    SSOUserFirstName          = "Staging"
    SSOUserLastName           = "Property Assessment"
  }

  account_tags = {
    "account"     = "staging-property-self-assessment"
    "managed"     = "AFT"
    "environment" = "staging"
    "application" = "faura-property-self-assessment"
  }

  change_management_parameters = {
    change_requested_by = "Henry Wanjala"
    change_reason       = "Staging Faura Property Self Assessment Account using AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group        = "staging"
  }

  account_customizations_name = "staging-property-self-assessment"
}
