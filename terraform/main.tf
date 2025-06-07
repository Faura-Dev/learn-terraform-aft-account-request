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
module "dev_property_assessment" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "services+dev-property-self-assessment@faura.us"
    AccountName               = "dev-property-self-assessment"
    ManagedOrganizationalUnit = "Workloads/Development"
    SSOUserEmail              = "services+dev-property-self-assessment@faura.us"
    SSOUserFirstName          = "Development"
    SSOUserLastName           = "Property Assessment"
  }

  account_tags = {
    "account"     = "dev-property-selft-assessment"
    "managed"     = "AFT"
    "environment" = "development"
    "application" = "faura-property-self-assessment"
    "security"    = "high"
    "compliance"  = "enterprise"
  }

  change_management_parameters = {
    change_requested_by = "Henry Wanjala"
    change_reason       = "Development Faura Property Self Assessment Account using AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group        = "development"
    security_team = "enterprise-security"
    app_team     = "property-assessment-team"
  }

  account_customizations_name = "dev-property-self-assessment"
}
