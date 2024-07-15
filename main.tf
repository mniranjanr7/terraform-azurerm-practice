resource "azurerm_service_plan" "app-service-plan" {
  name = var.service_plan_name
  location = var.location
  resource_group_name = var.resource_group_name

  sku_name = "F1"
  os_type = "Windows"
}

resource "azurerm_windows_web_app" "app" {
  name = var.app_name
  location = var.location
  resource_group_name = var.resource_group_name
  service_plan_id = azurerm_service_plan.app-service-plan.id
  site_config {
    
  }
}
  resource "azurerm_application_insights" "appinsights_app" {
    name = var.app_name
    location = var.location
    resource_group_name = var.resource_group_name
    application_type = "web"
  }