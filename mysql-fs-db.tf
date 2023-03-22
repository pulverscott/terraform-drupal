# Manages the MySQL Flexible Server Database
resource "azurerm_mysql_flexible_database" "main" {
  charset             = "utf8mb4"
  collation           = "utf8mb4_unicode_ci"
  name                = "${var.project_name_prefix}_drupal"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mysql_flexible_server.db.name
}