output "webapp_id" {
  value = azurerm_service_plan.app-service-plan.id
}

output "wepapp_url" {
  value = azurerm_windows_web_app.app.default_hostname
}