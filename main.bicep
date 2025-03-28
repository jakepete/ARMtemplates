param sites_atlas_webapp_backend_uat_name string = 'atlas-webapp-backend-uat'
param storageAccounts_atlaspdfuat_name string = 'atlaspdfuat'
param sites_atlas_webapp_frontend_uat_name string = 'atlas-webapp-frontend-uat'
param storageAccounts_atlasimageuat_name string = 'atlasimageuat'
param virtualNetworks_atlas_vnet_uat_name string = 'atlas-vnet-uat'
param virtualMachines_atlas_jumpbox_uat_name string = 'atlas-jumpbox-uat'
param sshPublicKeys_atlas_jumpbox_uat_key_name string = 'atlas-jumpbox-uat_key'
param bastionHosts_atlas_vnet_bastion_uat_name string = 'atlas-vnet-bastion-uat'
param privateEndpoints_atlas_image_uat_pe_name string = 'atlas-image-uat-pe'
param publicIPAddresses_atlas_vnet_uat_ip_name string = 'atlas-vnet-uat-ip'
param components_atlas_webapp_backend_uat_name string = 'atlas-webapp-backend-uat'
param components_atlas_fe_app_insights_uat_name string = 'atlas-fe-app-insights-uat'
param components_atlas_webapp_frontend_uat_name string = 'atlas-webapp-frontend-uat'
param staticSites_atlas_client_landing_page_uat_name string = 'atlas-client-landing-page-uat'
param serverfarms_atlas_service_plan_backend_uat_name string = 'atlas-service-plan-backend-uat'
param serverfarms_atlas_service_plan_frontend_uat_name string = 'atlas-service-plan-frontend-uat'
param staticSites_atlas_static_webapp_frontend_uat_name string = 'atlas-static-webapp-frontend-uat'
param networkInterfaces_atlas_jumpbox_uat869_z1_name string = 'atlas-jumpbox-uat869_z1'
param flexibleServers_atlas_postgres_uat_name string = 'atlas-postgres-uat'
param networkSecurityGroups_atlas_jumpbox_uat_nsg_name string = 'atlas-jumpbox-uat-nsg'
param publicIPAddresses_atlas_vnet_bastion_ip_uat_name string = 'atlas-vnet-bastion-ip-uat'
param privateDnsZones_privatelink_blob_core_windows_net_name string = 'privatelink.blob.core.windows.net'
param systemTopics_atlaspdfuat_127a1714_1c36_49b4_9381_9c53047cdee4_name string = 'atlaspdfuat-127a1714-1c36-49b4-9381-9c53047cdee4'
param systemTopics_atlasimageuat_2026f19a_3a9b_4827_83a8_66732aba118f_name string = 'atlasimageuat-2026f19a-3a9b-4827-83a8-66732aba118f'
param workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name string = '692afa0b-fb94-4544-9077-75f21578b5eb-atlas-uat-WUS2'
param smartdetectoralertrules_failure_anomalies_atlas_webapp_backend_uat_name string = 'failure anomalies - atlas-webapp-backend-uat'
param smartdetectoralertrules_failure_anomalies_atlas_fe_app_insights_uat_name string = 'failure anomalies - atlas-fe-app-insights-uat'
param smartdetectoralertrules_failure_anomalies_atlas_webapp_frontend_uat_name string = 'failure anomalies - atlas-webapp-frontend-uat'
param actiongroups_application_insights_smart_detection_externalid string = '/subscriptions/692afa0b-fb94-4544-9077-75f21578b5eb/resourceGroups/bexaenterpriseglobal/providers/microsoft.insights/actiongroups/application insights smart detection'
param privateDnsZones_privatelink_postgres_database_azure_com_externalid string = '/subscriptions/692afa0b-fb94-4544-9077-75f21578b5eb/resourceGroups/bexaenterpriseglobal/providers/Microsoft.Network/privateDnsZones/privatelink.postgres.database.azure.com'
param workspaces_DefaultWorkspace_692afa0b_fb94_4544_9077_75f21578b5eb_WUS2_externalid string = '/subscriptions/692afa0b-fb94-4544-9077-75f21578b5eb/resourceGroups/DefaultResourceGroup-WUS2/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-692afa0b-fb94-4544-9077-75f21578b5eb-WUS2'

resource sshPublicKeys_atlas_jumpbox_uat_key_name_resource 'Microsoft.Compute/sshPublicKeys@2024-07-01' = {
  name: sshPublicKeys_atlas_jumpbox_uat_key_name
  location: 'westus2'
  properties: {
    publicKey: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCsotqReyqv+91s3kXJTw4Gu+0sC1QWts+Yky1OFqgF+zeRcEykiLJbThJZ5OdRo1zcDZPw8AlWAdy03lZXEaEsivVdml2JIq6yGOELm5Fz3DsnKy/LTWuCev70LfglzOaq6OoPclEBjEmQRhvARsI/dc4+MJfDduyYGvH+5yrfd+4t3Bc0d2Cov2EM0EAKe/tSyJoEx9dj9ZZjc4C8Rfa55Utjvd15UoLDwi+HoXXMGu3NZANxyx8jSLot7IHFQx66yUpZres60JrShVk37VgiqLbgrfBmT5P0dkHK1H6r1xYUAsUPSVcpA3E0x3qA1zM02tOWCOh6rcbRfNh/m8FXDRCk/M6qI/ifbFyTiPos/9Bmn0Dvt7IQJVEjAmYy3TFKv4KLfLVBOpgZHWj1ZcUAXcUP/CFWO82ViJ3WcACrx20O+VHvRl7dHd5Rg+V6XaNyvlcUkdT68k80yjnaGtIX0gr6iM/ud9OB6R+A3InCtDiErQAI1vtf7OkYMLOAWP0= generated-by-azure'
  }
}

resource components_atlas_webapp_backend_uat_name_resource 'microsoft.insights/components@2020-02-02' = {
  name: components_atlas_webapp_backend_uat_name
  location: 'westus2'
  kind: 'web'
  properties: {
    Application_Type: 'web'
    Flow_Type: 'Redfield'
    Request_Source: 'IbizaWebAppExtensionCreate'
    RetentionInDays: 90
    WorkspaceResourceId: workspaces_DefaultWorkspace_692afa0b_fb94_4544_9077_75f21578b5eb_WUS2_externalid
    IngestionMode: 'LogAnalytics'
    publicNetworkAccessForIngestion: 'Enabled'
    publicNetworkAccessForQuery: 'Enabled'
  }
}

resource components_atlas_webapp_frontend_uat_name_resource 'microsoft.insights/components@2020-02-02' = {
  name: components_atlas_webapp_frontend_uat_name
  location: 'westus2'
  kind: 'web'
  properties: {
    Application_Type: 'web'
    Flow_Type: 'Redfield'
    Request_Source: 'IbizaWebAppExtensionCreate'
    RetentionInDays: 90
    WorkspaceResourceId: workspaces_DefaultWorkspace_692afa0b_fb94_4544_9077_75f21578b5eb_WUS2_externalid
    IngestionMode: 'LogAnalytics'
    publicNetworkAccessForIngestion: 'Enabled'
    publicNetworkAccessForQuery: 'Enabled'
  }
}

resource networkSecurityGroups_atlas_jumpbox_uat_nsg_name_resource 'Microsoft.Network/networkSecurityGroups@2024-05-01' = {
  name: networkSecurityGroups_atlas_jumpbox_uat_nsg_name
  location: 'westus2'
  properties: {
    securityRules: []
  }
}

resource privateDnsZones_privatelink_blob_core_windows_net_name_resource 'Microsoft.Network/privateDnsZones@2024-06-01' = {
  name: privateDnsZones_privatelink_blob_core_windows_net_name
  location: 'global'
  properties: {}
}

resource publicIPAddresses_atlas_vnet_bastion_ip_uat_name_resource 'Microsoft.Network/publicIPAddresses@2024-05-01' = {
  name: publicIPAddresses_atlas_vnet_bastion_ip_uat_name
  location: 'westus2'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  zones: [
    '1'
    '3'
    '2'
  ]
  properties: {
    ipAddress: '4.246.41.45'
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'
    idleTimeoutInMinutes: 4
    ipTags: []
  }
}

resource publicIPAddresses_atlas_vnet_uat_ip_name_resource 'Microsoft.Network/publicIPAddresses@2024-05-01' = {
  name: publicIPAddresses_atlas_vnet_uat_ip_name
  location: 'westus2'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    ipAddress: '52.247.213.102'
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'
    idleTimeoutInMinutes: 4
    ipTags: []
  }
}

resource virtualNetworks_atlas_vnet_uat_name_resource 'Microsoft.Network/virtualNetworks@2024-05-01' = {
  name: virtualNetworks_atlas_vnet_uat_name
  location: 'westus2'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    privateEndpointVNetPolicies: 'Disabled'
    subnets: [
      {
        name: 'atlas-webapp-subnet-uat'
        id: virtualNetworks_atlas_vnet_uat_name_atlas_webapp_subnet_uat.id
        properties: {
          addressPrefix: '10.0.0.0/24'
          serviceEndpoints: [
            {
              service: 'Microsoft.Storage'
              locations: [
                'westus2'
                'westcentralus'
              ]
            }
          ]
          delegations: [
            {
              name: 'delegation'
              id: '${virtualNetworks_atlas_vnet_uat_name_atlas_webapp_subnet_uat.id}/delegations/delegation'
              properties: {
                serviceName: 'Microsoft.Web/serverfarms'
              }
              type: 'Microsoft.Network/virtualNetworks/subnets/delegations'
            }
          ]
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
      {
        name: 'atlas-db-subnet-uat'
        id: virtualNetworks_atlas_vnet_uat_name_atlas_db_subnet_uat.id
        properties: {
          addressPrefix: '10.0.1.0/24'
          serviceEndpoints: [
            {
              service: 'Microsoft.Storage'
              locations: [
                'westus2'
                'westcentralus'
              ]
            }
          ]
          delegations: [
            {
              name: 'Microsoft.DBforPostgreSQL/flexibleServers'
              id: '${virtualNetworks_atlas_vnet_uat_name_atlas_db_subnet_uat.id}/delegations/Microsoft.DBforPostgreSQL/flexibleServers'
              properties: {
                serviceName: 'Microsoft.DBforPostgreSQL/flexibleServers'
              }
              type: 'Microsoft.Network/virtualNetworks/subnets/delegations'
            }
          ]
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
      {
        name: 'atlas-image-subnet-pe'
        id: virtualNetworks_atlas_vnet_uat_name_atlas_image_subnet_pe.id
        properties: {
          addressPrefix: '10.0.2.0/24'
          delegations: []
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
      {
        name: 'atlas-vm-subnet-uat'
        id: virtualNetworks_atlas_vnet_uat_name_atlas_vm_subnet_uat.id
        properties: {
          addressPrefix: '10.0.4.0/24'
          delegations: []
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
      {
        name: 'AzureBastionSubnet'
        id: virtualNetworks_atlas_vnet_uat_name_AzureBastionSubnet.id
        properties: {
          addressPrefix: '10.0.3.0/26'
          delegations: []
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
    ]
    virtualNetworkPeerings: []
    enableDdosProtection: false
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource 'Microsoft.OperationalInsights/workspaces@2023-09-01' = {
  name: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name
  location: 'westus2'
  properties: {
    sku: {
      name: 'PerGB2018'
    }
    retentionInDays: 30
    features: {
      legacy: 0
      searchVersion: 1
      enableLogAccessUsingOnlyResourcePermissions: true
    }
    workspaceCapping: {
      dailyQuotaGb: json('-1')
    }
    publicNetworkAccessForIngestion: 'Enabled'
    publicNetworkAccessForQuery: 'Enabled'
  }
}

resource storageAccounts_atlaspdfuat_name_resource 'Microsoft.Storage/storageAccounts@2024-01-01' = {
  name: storageAccounts_atlaspdfuat_name
  location: 'westus2'
  sku: {
    name: 'Standard_RAGRS'
    tier: 'Standard'
  }
  kind: 'StorageV2'
  properties: {
    dnsEndpointType: 'Standard'
    defaultToOAuthAuthentication: false
    publicNetworkAccess: 'Enabled'
    allowCrossTenantReplication: false
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
    allowSharedKeyAccess: true
    largeFileSharesState: 'Enabled'
    networkAcls: {
      resourceAccessRules: [
        {
          tenantId: 'eca6ce32-fa7b-4772-a4cf-0c22a6b59324'
          resourceId: '/subscriptions/692afa0b-fb94-4544-9077-75f21578b5eb/providers/Microsoft.Security/datascanners/storageDataScanner'
        }
      ]
      bypass: 'AzureServices'
      virtualNetworkRules: []
      ipRules: []
      defaultAction: 'Allow'
    }
    supportsHttpsTrafficOnly: true
    encryption: {
      requireInfrastructureEncryption: false
      services: {
        file: {
          keyType: 'Account'
          enabled: true
        }
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
      keySource: 'Microsoft.Storage'
    }
    accessTier: 'Hot'
  }
}

resource serverfarms_atlas_service_plan_backend_uat_name_resource 'Microsoft.Web/serverfarms@2024-04-01' = {
  name: serverfarms_atlas_service_plan_backend_uat_name
  location: 'West US 2'
  sku: {
    name: 'P1v3'
    tier: 'PremiumV3'
    size: 'P1v3'
    family: 'Pv3'
    capacity: 1
  }
  kind: 'linux'
  properties: {
    perSiteScaling: false
    elasticScaleEnabled: false
    maximumElasticWorkerCount: 1
    isSpot: false
    reserved: true
    isXenon: false
    hyperV: false
    targetWorkerCount: 0
    targetWorkerSizeId: 0
    zoneRedundant: false
  }
}

resource serverfarms_atlas_service_plan_frontend_uat_name_resource 'Microsoft.Web/serverfarms@2024-04-01' = {
  name: serverfarms_atlas_service_plan_frontend_uat_name
  location: 'West US 2'
  sku: {
    name: 'P1v3'
    tier: 'PremiumV3'
    size: 'P1v3'
    family: 'Pv3'
    capacity: 1
  }
  kind: 'linux'
  properties: {
    perSiteScaling: false
    elasticScaleEnabled: false
    maximumElasticWorkerCount: 1
    isSpot: false
    reserved: true
    isXenon: false
    hyperV: false
    targetWorkerCount: 0
    targetWorkerSizeId: 0
    zoneRedundant: false
  }
}

resource staticSites_atlas_client_landing_page_uat_name_resource 'Microsoft.Web/staticSites@2024-04-01' = {
  name: staticSites_atlas_client_landing_page_uat_name
  location: 'West US 2'
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
  properties: {
    stagingEnvironmentPolicy: 'Enabled'
    allowConfigFileUpdates: true
    provider: 'SwaCli'
    enterpriseGradeCdnStatus: 'Disabled'
  }
}

resource staticSites_atlas_static_webapp_frontend_uat_name_resource 'Microsoft.Web/staticSites@2024-04-01' = {
  name: staticSites_atlas_static_webapp_frontend_uat_name
  location: 'West US 2'
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
  properties: {
    stagingEnvironmentPolicy: 'Enabled'
    allowConfigFileUpdates: true
    provider: 'SwaCli'
    enterpriseGradeCdnStatus: 'Disabled'
  }
}

resource smartdetectoralertrules_failure_anomalies_atlas_fe_app_insights_uat_name_resource 'microsoft.alertsmanagement/smartdetectoralertrules@2021-04-01' = {
  name: smartdetectoralertrules_failure_anomalies_atlas_fe_app_insights_uat_name
  location: 'global'
  properties: {
    description: 'Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.'
    state: 'Enabled'
    severity: 'Sev3'
    frequency: 'PT1M'
    detector: {
      id: 'FailureAnomaliesDetector'
    }
    scope: [
      components_atlas_fe_app_insights_uat_name_resource.id
    ]
    actionGroups: {
      groupIds: [
        actiongroups_application_insights_smart_detection_externalid
      ]
    }
  }
}

resource smartdetectoralertrules_failure_anomalies_atlas_webapp_backend_uat_name_resource 'microsoft.alertsmanagement/smartdetectoralertrules@2021-04-01' = {
  name: smartdetectoralertrules_failure_anomalies_atlas_webapp_backend_uat_name
  location: 'global'
  properties: {
    description: 'Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.'
    state: 'Enabled'
    severity: 'Sev3'
    frequency: 'PT1M'
    detector: {
      id: 'FailureAnomaliesDetector'
    }
    scope: [
      components_atlas_webapp_backend_uat_name_resource.id
    ]
    actionGroups: {
      groupIds: [
        actiongroups_application_insights_smart_detection_externalid
      ]
    }
  }
}

resource smartdetectoralertrules_failure_anomalies_atlas_webapp_frontend_uat_name_resource 'microsoft.alertsmanagement/smartdetectoralertrules@2021-04-01' = {
  name: smartdetectoralertrules_failure_anomalies_atlas_webapp_frontend_uat_name
  location: 'global'
  properties: {
    description: 'Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.'
    state: 'Enabled'
    severity: 'Sev3'
    frequency: 'PT1M'
    detector: {
      id: 'FailureAnomaliesDetector'
    }
    scope: [
      components_atlas_webapp_frontend_uat_name_resource.id
    ]
    actionGroups: {
      groupIds: [
        actiongroups_application_insights_smart_detection_externalid
      ]
    }
  }
}

resource virtualMachines_atlas_jumpbox_uat_name_resource 'Microsoft.Compute/virtualMachines@2024-07-01' = {
  name: virtualMachines_atlas_jumpbox_uat_name
  location: 'westus2'
  zones: [
    '1'
  ]
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_B2s'
    }
    additionalCapabilities: {
      hibernationEnabled: false
    }
    storageProfile: {
      imageReference: {
        publisher: 'canonical'
        offer: 'ubuntu-24_04-lts'
        sku: 'server'
        version: 'latest'
      }
      osDisk: {
        osType: 'Linux'
        name: '${virtualMachines_atlas_jumpbox_uat_name}_OsDisk_1_2a197e9190d54894932d364edd11c7aa'
        createOption: 'FromImage'
        caching: 'ReadWrite'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
          id: resourceId(
            'Microsoft.Compute/disks',
            '${virtualMachines_atlas_jumpbox_uat_name}_OsDisk_1_2a197e9190d54894932d364edd11c7aa'
          )
        }
        deleteOption: 'Delete'
        diskSizeGB: 30
      }
      dataDisks: []
      diskControllerType: 'SCSI'
    }
    osProfile: {
      computerName: virtualMachines_atlas_jumpbox_uat_name
      adminUsername: 'bexaadmin'
      linuxConfiguration: {
        disablePasswordAuthentication: true
        ssh: {
          publicKeys: [
            {
              path: '/home/bexaadmin/.ssh/authorized_keys'
              keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCsotqReyqv+91s3kXJTw4Gu+0sC1QWts+Yky1OFqgF+zeRcEykiLJbThJZ5OdRo1zcDZPw8AlWAdy03lZXEaEsivVdml2JIq6yGOELm5Fz3DsnKy/LTWuCev70LfglzOaq6OoPclEBjEmQRhvARsI/dc4+MJfDduyYGvH+5yrfd+4t3Bc0d2Cov2EM0EAKe/tSyJoEx9dj9ZZjc4C8Rfa55Utjvd15UoLDwi+HoXXMGu3NZANxyx8jSLot7IHFQx66yUpZres60JrShVk37VgiqLbgrfBmT5P0dkHK1H6r1xYUAsUPSVcpA3E0x3qA1zM02tOWCOh6rcbRfNh/m8FXDRCk/M6qI/ifbFyTiPos/9Bmn0Dvt7IQJVEjAmYy3TFKv4KLfLVBOpgZHWj1ZcUAXcUP/CFWO82ViJ3WcACrx20O+VHvRl7dHd5Rg+V6XaNyvlcUkdT68k80yjnaGtIX0gr6iM/ud9OB6R+A3InCtDiErQAI1vtf7OkYMLOAWP0= generated-by-azure'
            }
          ]
        }
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'ImageDefault'
          assessmentMode: 'ImageDefault'
        }
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
    }
    securityProfile: {
      uefiSettings: {
        secureBootEnabled: true
        vTpmEnabled: true
      }
      securityType: 'TrustedLaunch'
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaces_atlas_jumpbox_uat869_z1_name_resource.id
          properties: {
            deleteOption: 'Detach'
          }
        }
      ]
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
      }
    }
  }
}

resource flexibleServers_atlas_postgres_uat_name_resource 'Microsoft.DBforPostgreSQL/flexibleServers@2024-11-01-preview' = {
  name: flexibleServers_atlas_postgres_uat_name
  location: 'West US 2'
  sku: {
    name: 'Standard_B1ms'
    tier: 'Burstable'
  }
  properties: {
    replica: {
      role: 'Primary'
    }
    storage: {
      iops: 500
      tier: 'P10'
      storageSizeGB: 128
      autoGrow: 'Disabled'
    }
    network: {
      publicNetworkAccess: 'Disabled'
      delegatedSubnetResourceId: virtualNetworks_atlas_vnet_uat_name_atlas_db_subnet_uat.id
      privateDnsZoneArmResourceId: privateDnsZones_privatelink_postgres_database_azure_com_externalid
    }
    dataEncryption: {
      type: 'SystemManaged'
    }
    authConfig: {
      activeDirectoryAuth: 'Disabled'
      passwordAuth: 'Enabled'
    }
    version: '16'
    administratorLogin: 'bexaadmin'
    availabilityZone: '2'
    backup: {
      backupRetentionDays: 7
      geoRedundantBackup: 'Disabled'
    }
    highAvailability: {
      mode: 'Disabled'
    }
    maintenanceWindow: {
      customWindow: 'Disabled'
      dayOfWeek: 0
      startHour: 0
      startMinute: 0
    }
    replicationRole: 'Primary'
  }
}

resource flexibleServers_atlas_postgres_uat_name_Default 'Microsoft.DBforPostgreSQL/flexibleServers/advancedThreatProtectionSettings@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'Default'
  properties: {
    state: 'Disabled'
  }
}

resource flexibleServers_atlas_postgres_uat_name_backup_638781355164855921 'Microsoft.DBforPostgreSQL/flexibleServers/backups@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'backup_638781355164855921'
}

resource flexibleServers_atlas_postgres_uat_name_backup_638782220089990752 'Microsoft.DBforPostgreSQL/flexibleServers/backups@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'backup_638782220089990752'
}

resource flexibleServers_atlas_postgres_uat_name_backup_638783084625736588 'Microsoft.DBforPostgreSQL/flexibleServers/backups@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'backup_638783084625736588'
}

resource flexibleServers_atlas_postgres_uat_name_backup_638783949620220734 'Microsoft.DBforPostgreSQL/flexibleServers/backups@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'backup_638783949620220734'
}

resource flexibleServers_atlas_postgres_uat_name_backup_638784814291879297 'Microsoft.DBforPostgreSQL/flexibleServers/backups@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'backup_638784814291879297'
}

resource flexibleServers_atlas_postgres_uat_name_backup_638785679174495086 'Microsoft.DBforPostgreSQL/flexibleServers/backups@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'backup_638785679174495086'
}

resource flexibleServers_atlas_postgres_uat_name_backup_638786544129362832 'Microsoft.DBforPostgreSQL/flexibleServers/backups@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'backup_638786544129362832'
}

resource flexibleServers_atlas_postgres_uat_name_allow_in_place_tablespaces 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'allow_in_place_tablespaces'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_allow_system_table_mods 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'allow_system_table_mods'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_application_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'application_name'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_archive_cleanup_command 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'archive_cleanup_command'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_archive_command 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'archive_command'
  properties: {
    value: 'BlobLogUpload.sh %f %p'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_archive_library 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'archive_library'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_archive_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'archive_mode'
  properties: {
    value: 'always'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_archive_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'archive_timeout'
  properties: {
    value: '300'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_array_nulls 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'array_nulls'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_authentication_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'authentication_timeout'
  properties: {
    value: '30'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_log_analyze 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.log_analyze'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_log_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.log_buffers'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_log_format 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.log_format'
  properties: {
    value: 'text'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_log_level 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.log_level'
  properties: {
    value: 'log'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_log_min_duration 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.log_min_duration'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_log_nested_statements 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.log_nested_statements'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_log_settings 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.log_settings'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_log_timing 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.log_timing'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_log_triggers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.log_triggers'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_log_verbose 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.log_verbose'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_log_wal 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.log_wal'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_auto_explain_sample_rate 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'auto_explain.sample_rate'
  properties: {
    value: '1.0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_analyze_scale_factor 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_analyze_scale_factor'
  properties: {
    value: '0.1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_analyze_threshold 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_analyze_threshold'
  properties: {
    value: '50'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_freeze_max_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_freeze_max_age'
  properties: {
    value: '200000000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_max_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_max_workers'
  properties: {
    value: '3'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_multixact_freeze_max_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_multixact_freeze_max_age'
  properties: {
    value: '400000000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_naptime 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_naptime'
  properties: {
    value: '60'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_vacuum_cost_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_vacuum_cost_delay'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_vacuum_cost_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_vacuum_cost_limit'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_vacuum_insert_scale_factor 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_vacuum_insert_scale_factor'
  properties: {
    value: '0.2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_vacuum_insert_threshold 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_vacuum_insert_threshold'
  properties: {
    value: '1000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_vacuum_scale_factor 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_vacuum_scale_factor'
  properties: {
    value: '0.2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_vacuum_threshold 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_vacuum_threshold'
  properties: {
    value: '50'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_autovacuum_work_mem 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'autovacuum_work_mem'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_accepted_password_auth_method 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure.accepted_password_auth_method'
  properties: {
    value: 'md5,scram-sha-256'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_enable_temp_tablespaces_on_local_ssd 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure.enable_temp_tablespaces_on_local_ssd'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_extensions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure.extensions'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_migration_copy_with_binary 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure.migration_copy_with_binary'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_migration_skip_analyze 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure.migration_skip_analyze'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_migration_skip_extensions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure.migration_skip_extensions'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_migration_skip_large_objects 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure.migration_skip_large_objects'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_migration_skip_role_user 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure.migration_skip_role_user'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_migration_table_split_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure.migration_table_split_size'
  properties: {
    value: '20480'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_single_to_flex_migration 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure.single_to_flex_migration'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_cdc_change_batch_buffer_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure_cdc.change_batch_buffer_size'
  properties: {
    value: '16'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_cdc_change_batch_export_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure_cdc.change_batch_export_timeout'
  properties: {
    value: '30'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_cdc_max_snapshot_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure_cdc.max_snapshot_workers'
  properties: {
    value: '3'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_cdc_parquet_compression 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure_cdc.parquet_compression'
  properties: {
    value: 'zstd'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_cdc_snapshot_buffer_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure_cdc.snapshot_buffer_size'
  properties: {
    value: '1000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_cdc_snapshot_export_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure_cdc.snapshot_export_timeout'
  properties: {
    value: '180'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_storage_allow_network_access 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure_storage.allow_network_access'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_storage_blob_block_size_mb 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure_storage.blob_block_size_mb'
  properties: {
    value: '128'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_storage_public_account_access 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure_storage.public_account_access'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_backend_flush_after 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'backend_flush_after'
  properties: {
    value: '256'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_backslash_quote 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'backslash_quote'
  properties: {
    value: 'safe_encoding'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_backtrace_functions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'backtrace_functions'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_bgwriter_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'bgwriter_delay'
  properties: {
    value: '20'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_bgwriter_flush_after 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'bgwriter_flush_after'
  properties: {
    value: '64'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_bgwriter_lru_maxpages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'bgwriter_lru_maxpages'
  properties: {
    value: '100'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_bgwriter_lru_multiplier 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'bgwriter_lru_multiplier'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_block_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'block_size'
  properties: {
    value: '8192'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_bonjour 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'bonjour'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_bonjour_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'bonjour_name'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_bytea_output 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'bytea_output'
  properties: {
    value: 'hex'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_check_function_bodies 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'check_function_bodies'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_checkpoint_completion_target 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'checkpoint_completion_target'
  properties: {
    value: '0.9'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_checkpoint_flush_after 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'checkpoint_flush_after'
  properties: {
    value: '32'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_checkpoint_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'checkpoint_timeout'
  properties: {
    value: '600'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_checkpoint_warning 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'checkpoint_warning'
  properties: {
    value: '30'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_client_connection_check_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'client_connection_check_interval'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_client_encoding 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'client_encoding'
  properties: {
    value: 'UTF8'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_client_min_messages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'client_min_messages'
  properties: {
    value: 'notice'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_cluster_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'cluster_name'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_commit_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'commit_delay'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_commit_siblings 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'commit_siblings'
  properties: {
    value: '5'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_compute_query_id 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'compute_query_id'
  properties: {
    value: 'auto'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_config_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'config_file'
  properties: {
    value: '/datadrive/pg/data/postgresql.conf'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_connection_throttle_bucket_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'connection_throttle.bucket_limit'
  properties: {
    value: '2000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_connection_throttle_enable 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'connection_throttle.enable'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_connection_throttle_factor_bias 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'connection_throttle.factor_bias'
  properties: {
    value: '0.8'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_connection_throttle_hash_entries_max 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'connection_throttle.hash_entries_max'
  properties: {
    value: '500'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_connection_throttle_reset_time 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'connection_throttle.reset_time'
  properties: {
    value: '120'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_connection_throttle_restore_factor 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'connection_throttle.restore_factor'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_connection_throttle_update_time 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'connection_throttle.update_time'
  properties: {
    value: '20'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_constraint_exclusion 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'constraint_exclusion'
  properties: {
    value: 'partition'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_cpu_index_tuple_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'cpu_index_tuple_cost'
  properties: {
    value: '0.005'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_cpu_operator_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'cpu_operator_cost'
  properties: {
    value: '0.0025'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_cpu_tuple_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'cpu_tuple_cost'
  properties: {
    value: '0.01'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_cron_database_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'cron.database_name'
  properties: {
    value: 'postgres'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_cron_log_run 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'cron.log_run'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_cron_log_statement 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'cron.log_statement'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_cron_max_running_jobs 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'cron.max_running_jobs'
  properties: {
    value: '32'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_cursor_tuple_fraction 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'cursor_tuple_fraction'
  properties: {
    value: '0.1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_data_checksums 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'data_checksums'
  properties: {
    value: 'on'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_data_directory 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'data_directory'
  properties: {
    value: '/datadrive/pg/data'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_data_directory_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'data_directory_mode'
  properties: {
    value: '0700'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_data_sync_retry 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'data_sync_retry'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_DateStyle 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'DateStyle'
  properties: {
    value: 'ISO, MDY'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_db_user_namespace 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'db_user_namespace'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_deadlock_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'deadlock_timeout'
  properties: {
    value: '1000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_debug_assertions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'debug_assertions'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_debug_discard_caches 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'debug_discard_caches'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_debug_parallel_query 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'debug_parallel_query'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_debug_pretty_print 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'debug_pretty_print'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_debug_print_parse 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'debug_print_parse'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_debug_print_plan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'debug_print_plan'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_debug_print_rewritten 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'debug_print_rewritten'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_default_statistics_target 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'default_statistics_target'
  properties: {
    value: '100'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_default_table_access_method 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'default_table_access_method'
  properties: {
    value: 'heap'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_default_tablespace 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'default_tablespace'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_default_text_search_config 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'default_text_search_config'
  properties: {
    value: 'pg_catalog.english'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_default_toast_compression 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'default_toast_compression'
  properties: {
    value: 'pglz'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_default_transaction_deferrable 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'default_transaction_deferrable'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_default_transaction_isolation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'default_transaction_isolation'
  properties: {
    value: 'read committed'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_default_transaction_read_only 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'default_transaction_read_only'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_dynamic_library_path 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'dynamic_library_path'
  properties: {
    value: '$libdir'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_dynamic_shared_memory_type 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'dynamic_shared_memory_type'
  properties: {
    value: 'posix'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_effective_cache_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'effective_cache_size'
  properties: {
    value: '229376'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_effective_io_concurrency 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'effective_io_concurrency'
  properties: {
    value: '1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_async_append 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_async_append'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_bitmapscan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_bitmapscan'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_gathermerge 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_gathermerge'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_hashagg 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_hashagg'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_hashjoin 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_hashjoin'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_incremental_sort 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_incremental_sort'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_indexonlyscan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_indexonlyscan'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_indexscan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_indexscan'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_material 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_material'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_memoize 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_memoize'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_mergejoin 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_mergejoin'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_nestloop 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_nestloop'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_parallel_append 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_parallel_append'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_parallel_hash 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_parallel_hash'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_partition_pruning 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_partition_pruning'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_partitionwise_aggregate 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_partitionwise_aggregate'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_partitionwise_join 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_partitionwise_join'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_seqscan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_seqscan'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_sort 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_sort'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_enable_tidscan 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'enable_tidscan'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_escape_string_warning 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'escape_string_warning'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_event_source 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'event_source'
  properties: {
    value: 'PostgreSQL'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_exit_on_error 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'exit_on_error'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_external_pid_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'external_pid_file'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_extra_float_digits 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'extra_float_digits'
  properties: {
    value: '1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_from_collapse_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'from_collapse_limit'
  properties: {
    value: '8'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_fsync 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'fsync'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_full_page_writes 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'full_page_writes'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_geqo 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'geqo'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_geqo_effort 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'geqo_effort'
  properties: {
    value: '5'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_geqo_generations 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'geqo_generations'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_geqo_pool_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'geqo_pool_size'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_geqo_seed 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'geqo_seed'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_geqo_selection_bias 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'geqo_selection_bias'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_geqo_threshold 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'geqo_threshold'
  properties: {
    value: '12'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_gin_fuzzy_search_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'gin_fuzzy_search_limit'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_gin_pending_list_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'gin_pending_list_limit'
  properties: {
    value: '4096'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_hash_mem_multiplier 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'hash_mem_multiplier'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_hba_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'hba_file'
  properties: {
    value: '/datadrive/pg/data/pg_hba.conf'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_hot_standby 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'hot_standby'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_hot_standby_feedback 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'hot_standby_feedback'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_huge_page_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'huge_page_size'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_huge_pages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'huge_pages'
  properties: {
    value: 'try'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ident_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ident_file'
  properties: {
    value: '/datadrive/pg/data/pg_ident.conf'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_idle_in_transaction_session_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'idle_in_transaction_session_timeout'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_idle_session_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'idle_session_timeout'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ignore_checksum_failure 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ignore_checksum_failure'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ignore_invalid_pages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ignore_invalid_pages'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ignore_system_indexes 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ignore_system_indexes'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_in_hot_standby 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'in_hot_standby'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_integer_datetimes 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'integer_datetimes'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_intelligent_tuning 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'intelligent_tuning'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_intelligent_tuning_metric_targets 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'intelligent_tuning.metric_targets'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_IntervalStyle 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'IntervalStyle'
  properties: {
    value: 'postgres'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_jit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'jit'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_jit_above_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'jit_above_cost'
  properties: {
    value: '100000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_jit_debugging_support 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'jit_debugging_support'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_jit_dump_bitcode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'jit_dump_bitcode'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_jit_expressions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'jit_expressions'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_jit_inline_above_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'jit_inline_above_cost'
  properties: {
    value: '500000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_jit_optimize_above_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'jit_optimize_above_cost'
  properties: {
    value: '500000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_jit_profiling_support 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'jit_profiling_support'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_jit_provider 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'jit_provider'
  properties: {
    value: 'llvmjit'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_jit_tuple_deforming 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'jit_tuple_deforming'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_join_collapse_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'join_collapse_limit'
  properties: {
    value: '8'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_krb_caseins_users 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'krb_caseins_users'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_krb_server_keyfile 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'krb_server_keyfile'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_lc_messages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'lc_messages'
  properties: {
    value: 'en_US.utf8'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_lc_monetary 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'lc_monetary'
  properties: {
    value: 'en_US.utf-8'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_lc_numeric 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'lc_numeric'
  properties: {
    value: 'en_US.utf-8'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_lc_time 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'lc_time'
  properties: {
    value: 'en_US.utf8'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_listen_addresses 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'listen_addresses'
  properties: {
    value: '*'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_lo_compat_privileges 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'lo_compat_privileges'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_local_preload_libraries 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'local_preload_libraries'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_lock_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'lock_timeout'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_autovacuum_min_duration 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_autovacuum_min_duration'
  properties: {
    value: '600000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_checkpoints 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_checkpoints'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_connections 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_connections'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_destination 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_destination'
  properties: {
    value: 'stderr'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_directory 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_directory'
  properties: {
    value: 'log'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_disconnections 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_disconnections'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_duration 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_duration'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_error_verbosity 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_error_verbosity'
  properties: {
    value: 'default'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_executor_stats 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_executor_stats'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_file_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_file_mode'
  properties: {
    value: '0600'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_filename 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_filename'
  properties: {
    value: 'postgresql-%Y-%m-%d_%H%M%S.log'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_hostname 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_hostname'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_line_prefix 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_line_prefix'
  properties: {
    value: '%t-%c-'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_lock_waits 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_lock_waits'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_min_duration_sample 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_min_duration_sample'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_min_duration_statement 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_min_duration_statement'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_min_error_statement 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_min_error_statement'
  properties: {
    value: 'error'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_min_messages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_min_messages'
  properties: {
    value: 'warning'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_parameter_max_length 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_parameter_max_length'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_parameter_max_length_on_error 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_parameter_max_length_on_error'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_parser_stats 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_parser_stats'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_planner_stats 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_planner_stats'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_recovery_conflict_waits 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_recovery_conflict_waits'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_replication_commands 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_replication_commands'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_rotation_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_rotation_age'
  properties: {
    value: '60'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_rotation_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_rotation_size'
  properties: {
    value: '102400'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_startup_progress_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_startup_progress_interval'
  properties: {
    value: '10000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_statement 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_statement'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_statement_sample_rate 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_statement_sample_rate'
  properties: {
    value: '1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_statement_stats 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_statement_stats'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_temp_files 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_temp_files'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_timezone 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_timezone'
  properties: {
    value: 'UTC'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_transaction_sample_rate 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_transaction_sample_rate'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_log_truncate_on_rotation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'log_truncate_on_rotation'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_logfiles_download_enable 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'logfiles.download_enable'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_logfiles_retention_days 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'logfiles.retention_days'
  properties: {
    value: '3'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_logging_collector 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'logging_collector'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_logical_decoding_work_mem 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'logical_decoding_work_mem'
  properties: {
    value: '65536'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_maintenance_io_concurrency 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'maintenance_io_concurrency'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_maintenance_work_mem 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'maintenance_work_mem'
  properties: {
    value: '99328'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_connections 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_connections'
  properties: {
    value: '50'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_files_per_process 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_files_per_process'
  properties: {
    value: '1000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_function_args 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_function_args'
  properties: {
    value: '100'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_identifier_length 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_identifier_length'
  properties: {
    value: '63'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_index_keys 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_index_keys'
  properties: {
    value: '32'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_locks_per_transaction 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_locks_per_transaction'
  properties: {
    value: '64'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_logical_replication_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_logical_replication_workers'
  properties: {
    value: '4'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_parallel_apply_workers_per_subscription 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_parallel_apply_workers_per_subscription'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_parallel_maintenance_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_parallel_maintenance_workers'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_parallel_workers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_parallel_workers'
  properties: {
    value: '8'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_parallel_workers_per_gather 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_parallel_workers_per_gather'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_pred_locks_per_page 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_pred_locks_per_page'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_pred_locks_per_relation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_pred_locks_per_relation'
  properties: {
    value: '-2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_pred_locks_per_transaction 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_pred_locks_per_transaction'
  properties: {
    value: '64'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_prepared_transactions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_prepared_transactions'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_replication_slots 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_replication_slots'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_slot_wal_keep_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_slot_wal_keep_size'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_stack_depth 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_stack_depth'
  properties: {
    value: '2048'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_standby_archive_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_standby_archive_delay'
  properties: {
    value: '30000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_standby_streaming_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_standby_streaming_delay'
  properties: {
    value: '30000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_sync_workers_per_subscription 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_sync_workers_per_subscription'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_wal_senders 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_wal_senders'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_wal_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_wal_size'
  properties: {
    value: '12288'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_max_worker_processes 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'max_worker_processes'
  properties: {
    value: '8'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_metrics_autovacuum_diagnostics 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'metrics.autovacuum_diagnostics'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_metrics_collector_database_activity 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'metrics.collector_database_activity'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_metrics_pgbouncer_diagnostics 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'metrics.pgbouncer_diagnostics'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_min_dynamic_shared_memory 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'min_dynamic_shared_memory'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_min_parallel_index_scan_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'min_parallel_index_scan_size'
  properties: {
    value: '64'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_min_parallel_table_scan_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'min_parallel_table_scan_size'
  properties: {
    value: '1024'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_min_wal_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'min_wal_size'
  properties: {
    value: '80'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_parallel_leader_participation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'parallel_leader_participation'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_parallel_setup_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'parallel_setup_cost'
  properties: {
    value: '1000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_parallel_tuple_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'parallel_tuple_cost'
  properties: {
    value: '0.1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_password_encryption 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'password_encryption'
  properties: {
    value: 'scram-sha-256'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_partman_bgw_analyze 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_partman_bgw.analyze'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_partman_bgw_dbname 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_partman_bgw.dbname'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_partman_bgw_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_partman_bgw.interval'
  properties: {
    value: '3600'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_partman_bgw_jobmon 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_partman_bgw.jobmon'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_partman_bgw_role 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_partman_bgw.role'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_qs_interval_length_minutes 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_qs.interval_length_minutes'
  properties: {
    value: '15'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_qs_is_enabled_fs 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_qs.is_enabled_fs'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_qs_max_plan_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_qs.max_plan_size'
  properties: {
    value: '7500'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_qs_max_query_text_length 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_qs.max_query_text_length'
  properties: {
    value: '6000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_qs_parameters_capture_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_qs.parameters_capture_mode'
  properties: {
    value: 'capture_parameterless_only'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_qs_query_capture_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_qs.query_capture_mode'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_qs_retention_period_in_days 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_qs.retention_period_in_days'
  properties: {
    value: '7'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_qs_store_query_plans 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_qs.store_query_plans'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_qs_track_utility 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_qs.track_utility'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_stat_statements_max 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_stat_statements.max'
  properties: {
    value: '5000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_stat_statements_save 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_stat_statements.save'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_stat_statements_track 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_stat_statements.track'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pg_stat_statements_track_utility 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pg_stat_statements.track_utility'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgaudit_log 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgaudit.log'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgaudit_log_catalog 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgaudit.log_catalog'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgaudit_log_client 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgaudit.log_client'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgaudit_log_level 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgaudit.log_level'
  properties: {
    value: 'log'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgaudit_log_parameter 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgaudit.log_parameter'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgaudit_log_relation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgaudit.log_relation'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgaudit_log_statement_once 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgaudit.log_statement_once'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgaudit_role 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgaudit.role'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pglogical_batch_inserts 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pglogical.batch_inserts'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pglogical_conflict_log_level 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pglogical.conflict_log_level'
  properties: {
    value: 'log'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pglogical_conflict_resolution 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pglogical.conflict_resolution'
  properties: {
    value: 'apply_remote'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pglogical_use_spi 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pglogical.use_spi'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgms_stats_is_enabled_fs 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgms_stats.is_enabled_fs'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgms_wait_sampling_history_period 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgms_wait_sampling.history_period'
  properties: {
    value: '100'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgms_wait_sampling_is_enabled_fs 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgms_wait_sampling.is_enabled_fs'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pgms_wait_sampling_query_capture_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pgms_wait_sampling.query_capture_mode'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_plan_cache_mode 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'plan_cache_mode'
  properties: {
    value: 'auto'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_port 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'port'
  properties: {
    value: '5432'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_post_auth_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'post_auth_delay'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_postgis_gdal_enabled_drivers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'postgis.gdal_enabled_drivers'
  properties: {
    value: 'DISABLE_ALL'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_pre_auth_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'pre_auth_delay'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_primary_conninfo 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'primary_conninfo'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_primary_slot_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'primary_slot_name'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_quote_all_identifiers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'quote_all_identifiers'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_random_page_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'random_page_cost'
  properties: {
    value: '2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_end_command 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_end_command'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_init_sync_method 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_init_sync_method'
  properties: {
    value: 'fsync'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_min_apply_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_min_apply_delay'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_prefetch 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_prefetch'
  properties: {
    value: 'try'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_target 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_target'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_target_action 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_target_action'
  properties: {
    value: 'pause'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_target_inclusive 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_target_inclusive'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_target_lsn 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_target_lsn'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_target_name 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_target_name'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_target_time 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_target_time'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_target_timeline 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_target_timeline'
  properties: {
    value: 'latest'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recovery_target_xid 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recovery_target_xid'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_recursive_worktable_factor 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'recursive_worktable_factor'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_remove_temp_files_after_crash 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'remove_temp_files_after_crash'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_require_secure_transport 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'require_secure_transport'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_reserved_connections 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'reserved_connections'
  properties: {
    value: '5'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_restart_after_crash 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'restart_after_crash'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_restore_command 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'restore_command'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_row_security 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'row_security'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_search_path 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'search_path'
  properties: {
    value: '"$user", public'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_segment_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'segment_size'
  properties: {
    value: '131072'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_seq_page_cost 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'seq_page_cost'
  properties: {
    value: '1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_server_encoding 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'server_encoding'
  properties: {
    value: 'UTF8'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_server_version 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'server_version'
  properties: {
    value: '16.4'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_server_version_num 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'server_version_num'
  properties: {
    value: '160004'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_session_preload_libraries 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'session_preload_libraries'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_session_replication_role 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'session_replication_role'
  properties: {
    value: 'origin'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_shared_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'shared_buffers'
  properties: {
    value: '32768'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_shared_memory_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'shared_memory_size'
  properties: {
    value: '301'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_shared_memory_size_in_huge_pages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'shared_memory_size_in_huge_pages'
  properties: {
    value: '151'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_shared_memory_type 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'shared_memory_type'
  properties: {
    value: 'mmap'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_shared_preload_libraries 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'shared_preload_libraries'
  properties: {
    value: 'pg_cron,pg_stat_statements'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl'
  properties: {
    value: 'on'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_ca_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_ca_file'
  properties: {
    value: '/datadrive/certs/ca.pem'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_cert_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_cert_file'
  properties: {
    value: '/datadrive/certs/cert.pem'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_ciphers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_ciphers'
  properties: {
    value: 'ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_crl_dir 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_crl_dir'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_crl_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_crl_file'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_dh_params_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_dh_params_file'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_ecdh_curve 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_ecdh_curve'
  properties: {
    value: 'prime256v1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_key_file 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_key_file'
  properties: {
    value: '/datadrive/certs/key.pem'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_library 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_library'
  properties: {
    value: 'OpenSSL'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_max_protocol_version 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_max_protocol_version'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_min_protocol_version 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_min_protocol_version'
  properties: {
    value: 'TLSv1.2'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_passphrase_command 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_passphrase_command'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_passphrase_command_supports_reload 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_passphrase_command_supports_reload'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_ssl_prefer_server_ciphers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'ssl_prefer_server_ciphers'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_standard_conforming_strings 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'standard_conforming_strings'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_statement_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'statement_timeout'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_stats_fetch_consistency 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'stats_fetch_consistency'
  properties: {
    value: 'cache'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_superuser_reserved_connections 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'superuser_reserved_connections'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_synchronize_seqscans 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'synchronize_seqscans'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_synchronous_commit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'synchronous_commit'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_synchronous_standby_names 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'synchronous_standby_names'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_syslog_facility 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'syslog_facility'
  properties: {
    value: 'local0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_syslog_ident 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'syslog_ident'
  properties: {
    value: 'postgres'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_syslog_sequence_numbers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'syslog_sequence_numbers'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_syslog_split_messages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'syslog_split_messages'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_tcp_keepalives_count 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'tcp_keepalives_count'
  properties: {
    value: '9'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_tcp_keepalives_idle 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'tcp_keepalives_idle'
  properties: {
    value: '120'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_tcp_keepalives_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'tcp_keepalives_interval'
  properties: {
    value: '30'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_tcp_user_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'tcp_user_timeout'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_temp_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'temp_buffers'
  properties: {
    value: '1024'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_temp_file_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'temp_file_limit'
  properties: {
    value: '-1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_temp_tablespaces 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'temp_tablespaces'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_TimeZone 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'TimeZone'
  properties: {
    value: 'UTC'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_timezone_abbreviations 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'timezone_abbreviations'
  properties: {
    value: 'Default'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_trace_notify 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'trace_notify'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_trace_recovery_messages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'trace_recovery_messages'
  properties: {
    value: 'log'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_trace_sort 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'trace_sort'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_track_activities 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'track_activities'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_track_activity_query_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'track_activity_query_size'
  properties: {
    value: '1024'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_track_commit_timestamp 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'track_commit_timestamp'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_track_counts 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'track_counts'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_track_functions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'track_functions'
  properties: {
    value: 'none'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_track_io_timing 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'track_io_timing'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_track_wal_io_timing 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'track_wal_io_timing'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_transaction_deferrable 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'transaction_deferrable'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_transaction_isolation 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'transaction_isolation'
  properties: {
    value: 'read committed'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_transaction_read_only 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'transaction_read_only'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_transform_null_equals 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'transform_null_equals'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_unix_socket_directories 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'unix_socket_directories'
  properties: {
    value: '/tmp,/tmp/tuning_sockets'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_unix_socket_group 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'unix_socket_group'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_unix_socket_permissions 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'unix_socket_permissions'
  properties: {
    value: '0777'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_update_process_title 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'update_process_title'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_buffer_usage_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_buffer_usage_limit'
  properties: {
    value: '256'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_cost_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_cost_delay'
  properties: {
    value: '0'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_cost_limit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_cost_limit'
  properties: {
    value: '200'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_cost_page_dirty 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_cost_page_dirty'
  properties: {
    value: '20'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_cost_page_hit 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_cost_page_hit'
  properties: {
    value: '1'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_cost_page_miss 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_cost_page_miss'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_failsafe_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_failsafe_age'
  properties: {
    value: '1600000000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_freeze_min_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_freeze_min_age'
  properties: {
    value: '50000000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_freeze_table_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_freeze_table_age'
  properties: {
    value: '150000000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_multixact_failsafe_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_multixact_failsafe_age'
  properties: {
    value: '1600000000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_multixact_freeze_min_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_multixact_freeze_min_age'
  properties: {
    value: '5000000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_vacuum_multixact_freeze_table_age 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'vacuum_multixact_freeze_table_age'
  properties: {
    value: '150000000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_block_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_block_size'
  properties: {
    value: '8192'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_buffers 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_buffers'
  properties: {
    value: '2048'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_compression 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_compression'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_consistency_checking 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_consistency_checking'
  properties: {
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_decode_buffer_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_decode_buffer_size'
  properties: {
    value: '524288'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_init_zero 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_init_zero'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_keep_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_keep_size'
  properties: {
    value: '400'
    source: 'user-override'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_level 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_level'
  properties: {
    value: 'replica'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_log_hints 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_log_hints'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_receiver_create_temp_slot 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_receiver_create_temp_slot'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_receiver_status_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_receiver_status_interval'
  properties: {
    value: '10'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_receiver_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_receiver_timeout'
  properties: {
    value: '60000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_recycle 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_recycle'
  properties: {
    value: 'on'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_retrieve_retry_interval 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_retrieve_retry_interval'
  properties: {
    value: '5000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_segment_size 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_segment_size'
  properties: {
    value: '16777216'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_sender_timeout 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_sender_timeout'
  properties: {
    value: '60000'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_skip_threshold 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_skip_threshold'
  properties: {
    value: '2048'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_sync_method 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_sync_method'
  properties: {
    value: 'fdatasync'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_writer_delay 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_writer_delay'
  properties: {
    value: '200'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_wal_writer_flush_after 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'wal_writer_flush_after'
  properties: {
    value: '128'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_work_mem 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'work_mem'
  properties: {
    value: '4096'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_xmlbinary 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'xmlbinary'
  properties: {
    value: 'base64'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_xmloption 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'xmloption'
  properties: {
    value: 'content'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_zero_damaged_pages 'Microsoft.DBforPostgreSQL/flexibleServers/configurations@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'zero_damaged_pages'
  properties: {
    value: 'off'
    source: 'system-default'
  }
}

resource flexibleServers_atlas_postgres_uat_name_atlas 'Microsoft.DBforPostgreSQL/flexibleServers/databases@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'atlas'
  properties: {
    charset: 'UTF8'
    collation: 'en_US.utf8'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_maintenance 'Microsoft.DBforPostgreSQL/flexibleServers/databases@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure_maintenance'
  properties: {
    charset: 'UTF8'
    collation: 'en_US.utf8'
  }
}

resource flexibleServers_atlas_postgres_uat_name_azure_sys 'Microsoft.DBforPostgreSQL/flexibleServers/databases@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'azure_sys'
  properties: {
    charset: 'UTF8'
    collation: 'en_US.utf8'
  }
}

resource flexibleServers_atlas_postgres_uat_name_postgres 'Microsoft.DBforPostgreSQL/flexibleServers/databases@2024-11-01-preview' = {
  parent: flexibleServers_atlas_postgres_uat_name_resource
  name: 'postgres'
  properties: {
    charset: 'UTF8'
    collation: 'en_US.utf8'
  }
}

resource systemTopics_atlasimageuat_2026f19a_3a9b_4827_83a8_66732aba118f_name_resource 'Microsoft.EventGrid/systemTopics@2025-02-15' = {
  name: systemTopics_atlasimageuat_2026f19a_3a9b_4827_83a8_66732aba118f_name
  location: 'westus2'
  properties: {
    source: storageAccounts_atlasimageuat_name_resource.id
    topicType: 'microsoft.storage.storageaccounts'
  }
}

resource systemTopics_atlaspdfuat_127a1714_1c36_49b4_9381_9c53047cdee4_name_resource 'Microsoft.EventGrid/systemTopics@2025-02-15' = {
  name: systemTopics_atlaspdfuat_127a1714_1c36_49b4_9381_9c53047cdee4_name
  location: 'westus2'
  properties: {
    source: storageAccounts_atlaspdfuat_name_resource.id
    topicType: 'microsoft.storage.storageaccounts'
  }
}

resource systemTopics_atlasimageuat_2026f19a_3a9b_4827_83a8_66732aba118f_name_StorageAntimalwareSubscription 'Microsoft.EventGrid/systemTopics/eventSubscriptions@2025-02-15' = {
  parent: systemTopics_atlasimageuat_2026f19a_3a9b_4827_83a8_66732aba118f_name_resource
  name: 'StorageAntimalwareSubscription'
  properties: {
    destination: {
      properties: {
        maxEventsPerBatch: 1
        preferredBatchSizeInKilobytes: 64
        azureActiveDirectoryTenantId: '33e01921-4d64-4f8c-a055-5bdaffd5e33d'
        azureActiveDirectoryApplicationIdOrUri: 'f1f8da5f-609a-401d-85b2-d498116b7265'
      }
      endpointType: 'WebHook'
    }
    filter: {
      includedEventTypes: [
        'Microsoft.Storage.BlobCreated'
      ]
      advancedFilters: [
        {
          values: [
            'BlockBlob'
          ]
          operatorType: 'StringContains'
          key: 'data.blobType'
        }
      ]
    }
    eventDeliverySchema: 'EventGridSchema'
    retryPolicy: {
      maxDeliveryAttempts: 30
      eventTimeToLiveInMinutes: 1440
    }
  }
}

resource systemTopics_atlaspdfuat_127a1714_1c36_49b4_9381_9c53047cdee4_name_StorageAntimalwareSubscription 'Microsoft.EventGrid/systemTopics/eventSubscriptions@2025-02-15' = {
  parent: systemTopics_atlaspdfuat_127a1714_1c36_49b4_9381_9c53047cdee4_name_resource
  name: 'StorageAntimalwareSubscription'
  properties: {
    destination: {
      properties: {
        maxEventsPerBatch: 1
        preferredBatchSizeInKilobytes: 64
        azureActiveDirectoryTenantId: '33e01921-4d64-4f8c-a055-5bdaffd5e33d'
        azureActiveDirectoryApplicationIdOrUri: 'f1f8da5f-609a-401d-85b2-d498116b7265'
      }
      endpointType: 'WebHook'
    }
    filter: {
      includedEventTypes: [
        'Microsoft.Storage.BlobCreated'
      ]
      advancedFilters: [
        {
          values: [
            'BlockBlob'
          ]
          operatorType: 'StringContains'
          key: 'data.blobType'
        }
      ]
    }
    eventDeliverySchema: 'EventGridSchema'
    retryPolicy: {
      maxDeliveryAttempts: 30
      eventTimeToLiveInMinutes: 1440
    }
  }
}

resource components_atlas_fe_app_insights_uat_name_resource 'microsoft.insights/components@2020-02-02' = {
  name: components_atlas_fe_app_insights_uat_name
  location: 'westus2'
  tags: {
    Environment: 'UAT'
  }
  kind: 'web'
  properties: {
    Application_Type: 'web'
    Flow_Type: 'Redfield'
    Request_Source: 'IbizaAIExtension'
    RetentionInDays: 90
    WorkspaceResourceId: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource.id
    IngestionMode: 'LogAnalytics'
    publicNetworkAccessForIngestion: 'Enabled'
    publicNetworkAccessForQuery: 'Enabled'
  }
}

resource components_atlas_fe_app_insights_uat_name_degradationindependencyduration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'degradationindependencyduration'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'degradationindependencyduration'
      DisplayName: 'Degradation in dependency duration'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_degradationindependencyduration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'degradationindependencyduration'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'degradationindependencyduration'
      DisplayName: 'Degradation in dependency duration'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_degradationindependencyduration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'degradationindependencyduration'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'degradationindependencyduration'
      DisplayName: 'Degradation in dependency duration'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_degradationinserverresponsetime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'degradationinserverresponsetime'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'degradationinserverresponsetime'
      DisplayName: 'Degradation in server response time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_degradationinserverresponsetime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'degradationinserverresponsetime'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'degradationinserverresponsetime'
      DisplayName: 'Degradation in server response time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_degradationinserverresponsetime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'degradationinserverresponsetime'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'degradationinserverresponsetime'
      DisplayName: 'Degradation in server response time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_digestMailConfiguration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'digestMailConfiguration'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'digestMailConfiguration'
      DisplayName: 'Digest Mail Configuration'
      Description: 'This rule describes the digest mail preferences'
      HelpUrl: 'www.homail.com'
      IsHidden: true
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_digestMailConfiguration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'digestMailConfiguration'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'digestMailConfiguration'
      DisplayName: 'Digest Mail Configuration'
      Description: 'This rule describes the digest mail preferences'
      HelpUrl: 'www.homail.com'
      IsHidden: true
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_digestMailConfiguration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'digestMailConfiguration'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'digestMailConfiguration'
      DisplayName: 'Digest Mail Configuration'
      Description: 'This rule describes the digest mail preferences'
      HelpUrl: 'www.homail.com'
      IsHidden: true
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_extension_billingdatavolumedailyspikeextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'extension_billingdatavolumedailyspikeextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_billingdatavolumedailyspikeextension'
      DisplayName: 'Abnormal rise in daily data volume (preview)'
      Description: 'This detection rule automatically analyzes the billing data generated by your application, and can warn you about an unusual increase in your application\'s billing costs'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/tree/master/SmartDetection/billing-data-volume-daily-spike.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_extension_billingdatavolumedailyspikeextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'extension_billingdatavolumedailyspikeextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_billingdatavolumedailyspikeextension'
      DisplayName: 'Abnormal rise in daily data volume (preview)'
      Description: 'This detection rule automatically analyzes the billing data generated by your application, and can warn you about an unusual increase in your application\'s billing costs'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/tree/master/SmartDetection/billing-data-volume-daily-spike.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_extension_billingdatavolumedailyspikeextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'extension_billingdatavolumedailyspikeextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_billingdatavolumedailyspikeextension'
      DisplayName: 'Abnormal rise in daily data volume (preview)'
      Description: 'This detection rule automatically analyzes the billing data generated by your application, and can warn you about an unusual increase in your application\'s billing costs'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/tree/master/SmartDetection/billing-data-volume-daily-spike.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_extension_canaryextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'extension_canaryextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_canaryextension'
      DisplayName: 'Canary extension'
      Description: 'Canary extension'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/'
      IsHidden: true
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_extension_canaryextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'extension_canaryextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_canaryextension'
      DisplayName: 'Canary extension'
      Description: 'Canary extension'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/'
      IsHidden: true
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_extension_canaryextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'extension_canaryextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_canaryextension'
      DisplayName: 'Canary extension'
      Description: 'Canary extension'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/'
      IsHidden: true
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_extension_exceptionchangeextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'extension_exceptionchangeextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_exceptionchangeextension'
      DisplayName: 'Abnormal rise in exception volume (preview)'
      Description: 'This detection rule automatically analyzes the exceptions thrown in your application, and can warn you about unusual patterns in your exception telemetry.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/abnormal-rise-in-exception-volume.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_extension_exceptionchangeextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'extension_exceptionchangeextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_exceptionchangeextension'
      DisplayName: 'Abnormal rise in exception volume (preview)'
      Description: 'This detection rule automatically analyzes the exceptions thrown in your application, and can warn you about unusual patterns in your exception telemetry.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/abnormal-rise-in-exception-volume.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_extension_exceptionchangeextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'extension_exceptionchangeextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_exceptionchangeextension'
      DisplayName: 'Abnormal rise in exception volume (preview)'
      Description: 'This detection rule automatically analyzes the exceptions thrown in your application, and can warn you about unusual patterns in your exception telemetry.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/abnormal-rise-in-exception-volume.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_extension_memoryleakextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'extension_memoryleakextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_memoryleakextension'
      DisplayName: 'Potential memory leak detected (preview)'
      Description: 'This detection rule automatically analyzes the memory consumption of each process in your application, and can warn you about potential memory leaks or increased memory consumption.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/tree/master/SmartDetection/memory-leak.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_extension_memoryleakextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'extension_memoryleakextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_memoryleakextension'
      DisplayName: 'Potential memory leak detected (preview)'
      Description: 'This detection rule automatically analyzes the memory consumption of each process in your application, and can warn you about potential memory leaks or increased memory consumption.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/tree/master/SmartDetection/memory-leak.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_extension_memoryleakextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'extension_memoryleakextension'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_memoryleakextension'
      DisplayName: 'Potential memory leak detected (preview)'
      Description: 'This detection rule automatically analyzes the memory consumption of each process in your application, and can warn you about potential memory leaks or increased memory consumption.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/tree/master/SmartDetection/memory-leak.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_extension_securityextensionspackage 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'extension_securityextensionspackage'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_securityextensionspackage'
      DisplayName: 'Potential security issue detected (preview)'
      Description: 'This detection rule automatically analyzes the telemetry generated by your application and detects potential security issues.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/application-security-detection-pack.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_extension_securityextensionspackage 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'extension_securityextensionspackage'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_securityextensionspackage'
      DisplayName: 'Potential security issue detected (preview)'
      Description: 'This detection rule automatically analyzes the telemetry generated by your application and detects potential security issues.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/application-security-detection-pack.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_extension_securityextensionspackage 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'extension_securityextensionspackage'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_securityextensionspackage'
      DisplayName: 'Potential security issue detected (preview)'
      Description: 'This detection rule automatically analyzes the telemetry generated by your application and detects potential security issues.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/application-security-detection-pack.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_extension_traceseveritydetector 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'extension_traceseveritydetector'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_traceseveritydetector'
      DisplayName: 'Degradation in trace severity ratio (preview)'
      Description: 'This detection rule automatically analyzes the trace logs emitted from your application, and can warn you about unusual patterns in the severity of your trace telemetry.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/degradation-in-trace-severity-ratio.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_extension_traceseveritydetector 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'extension_traceseveritydetector'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_traceseveritydetector'
      DisplayName: 'Degradation in trace severity ratio (preview)'
      Description: 'This detection rule automatically analyzes the trace logs emitted from your application, and can warn you about unusual patterns in the severity of your trace telemetry.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/degradation-in-trace-severity-ratio.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_extension_traceseveritydetector 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'extension_traceseveritydetector'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'extension_traceseveritydetector'
      DisplayName: 'Degradation in trace severity ratio (preview)'
      Description: 'This detection rule automatically analyzes the trace logs emitted from your application, and can warn you about unusual patterns in the severity of your trace telemetry.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/degradation-in-trace-severity-ratio.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_longdependencyduration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'longdependencyduration'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'longdependencyduration'
      DisplayName: 'Long dependency duration'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_longdependencyduration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'longdependencyduration'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'longdependencyduration'
      DisplayName: 'Long dependency duration'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_longdependencyduration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'longdependencyduration'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'longdependencyduration'
      DisplayName: 'Long dependency duration'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_migrationToAlertRulesCompleted 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'migrationToAlertRulesCompleted'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'migrationToAlertRulesCompleted'
      DisplayName: 'Migration To Alert Rules Completed'
      Description: 'A configuration that controls the migration state of Smart Detection to Smart Alerts'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: true
      IsEnabledByDefault: false
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: false
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_migrationToAlertRulesCompleted 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'migrationToAlertRulesCompleted'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'migrationToAlertRulesCompleted'
      DisplayName: 'Migration To Alert Rules Completed'
      Description: 'A configuration that controls the migration state of Smart Detection to Smart Alerts'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: true
      IsEnabledByDefault: false
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: false
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_migrationToAlertRulesCompleted 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'migrationToAlertRulesCompleted'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'migrationToAlertRulesCompleted'
      DisplayName: 'Migration To Alert Rules Completed'
      Description: 'A configuration that controls the migration state of Smart Detection to Smart Alerts'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: true
      IsEnabledByDefault: false
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    Enabled: false
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_slowpageloadtime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'slowpageloadtime'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'slowpageloadtime'
      DisplayName: 'Slow page load time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_slowpageloadtime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'slowpageloadtime'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'slowpageloadtime'
      DisplayName: 'Slow page load time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_slowpageloadtime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'slowpageloadtime'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'slowpageloadtime'
      DisplayName: 'Slow page load time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_fe_app_insights_uat_name_slowserverresponsetime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_fe_app_insights_uat_name_resource
  name: 'slowserverresponsetime'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'slowserverresponsetime'
      DisplayName: 'Slow server response time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_backend_uat_name_slowserverresponsetime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_backend_uat_name_resource
  name: 'slowserverresponsetime'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'slowserverresponsetime'
      DisplayName: 'Slow server response time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource components_atlas_webapp_frontend_uat_name_slowserverresponsetime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_atlas_webapp_frontend_uat_name_resource
  name: 'slowserverresponsetime'
  location: 'westus2'
  properties: {
    RuleDefinitions: {
      Name: 'slowserverresponsetime'
      DisplayName: 'Slow server response time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    Enabled: true
    SendEmailsToSubscriptionOwners: true
    CustomEmails: []
  }
}

resource privateDnsZones_privatelink_blob_core_windows_net_name_atlasimageuat 'Microsoft.Network/privateDnsZones/A@2024-06-01' = {
  parent: privateDnsZones_privatelink_blob_core_windows_net_name_resource
  name: 'atlasimageuat'
  properties: {
    ttl: 3600
    aRecords: [
      {
        ipv4Address: '10.0.2.4'
      }
    ]
  }
}

resource Microsoft_Network_privateDnsZones_SOA_privateDnsZones_privatelink_blob_core_windows_net_name 'Microsoft.Network/privateDnsZones/SOA@2024-06-01' = {
  parent: privateDnsZones_privatelink_blob_core_windows_net_name_resource
  name: '@'
  properties: {
    ttl: 3600
    soaRecord: {
      email: 'azureprivatedns-host.microsoft.com'
      expireTime: 2419200
      host: 'azureprivatedns.net'
      minimumTtl: 10
      refreshTime: 3600
      retryTime: 300
      serialNumber: 1
    }
  }
}

resource virtualNetworks_atlas_vnet_uat_name_atlas_db_subnet_uat 'Microsoft.Network/virtualNetworks/subnets@2024-05-01' = {
  name: '${virtualNetworks_atlas_vnet_uat_name}/atlas-db-subnet-uat'
  properties: {
    addressPrefix: '10.0.1.0/24'
    serviceEndpoints: [
      {
        service: 'Microsoft.Storage'
        locations: [
          'westus2'
          'westcentralus'
        ]
      }
    ]
    delegations: [
      {
        name: 'Microsoft.DBforPostgreSQL/flexibleServers'
        id: '${virtualNetworks_atlas_vnet_uat_name_atlas_db_subnet_uat.id}/delegations/Microsoft.DBforPostgreSQL/flexibleServers'
        properties: {
          serviceName: 'Microsoft.DBforPostgreSQL/flexibleServers'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets/delegations'
      }
    ]
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
  dependsOn: [
    virtualNetworks_atlas_vnet_uat_name_resource
  ]
}

resource virtualNetworks_atlas_vnet_uat_name_atlas_image_subnet_pe 'Microsoft.Network/virtualNetworks/subnets@2024-05-01' = {
  name: '${virtualNetworks_atlas_vnet_uat_name}/atlas-image-subnet-pe'
  properties: {
    addressPrefix: '10.0.2.0/24'
    delegations: []
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
  dependsOn: [
    virtualNetworks_atlas_vnet_uat_name_resource
  ]
}

resource virtualNetworks_atlas_vnet_uat_name_atlas_vm_subnet_uat 'Microsoft.Network/virtualNetworks/subnets@2024-05-01' = {
  name: '${virtualNetworks_atlas_vnet_uat_name}/atlas-vm-subnet-uat'
  properties: {
    addressPrefix: '10.0.4.0/24'
    delegations: []
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
  dependsOn: [
    virtualNetworks_atlas_vnet_uat_name_resource
  ]
}

resource virtualNetworks_atlas_vnet_uat_name_atlas_webapp_subnet_uat 'Microsoft.Network/virtualNetworks/subnets@2024-05-01' = {
  name: '${virtualNetworks_atlas_vnet_uat_name}/atlas-webapp-subnet-uat'
  properties: {
    addressPrefix: '10.0.0.0/24'
    serviceEndpoints: [
      {
        service: 'Microsoft.Storage'
        locations: [
          'westus2'
          'westcentralus'
        ]
      }
    ]
    delegations: [
      {
        name: 'delegation'
        id: '${virtualNetworks_atlas_vnet_uat_name_atlas_webapp_subnet_uat.id}/delegations/delegation'
        properties: {
          serviceName: 'Microsoft.Web/serverfarms'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets/delegations'
      }
    ]
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
  dependsOn: [
    virtualNetworks_atlas_vnet_uat_name_resource
  ]
}

resource virtualNetworks_atlas_vnet_uat_name_AzureBastionSubnet 'Microsoft.Network/virtualNetworks/subnets@2024-05-01' = {
  name: '${virtualNetworks_atlas_vnet_uat_name}/AzureBastionSubnet'
  properties: {
    addressPrefix: '10.0.3.0/26'
    delegations: []
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
  dependsOn: [
    virtualNetworks_atlas_vnet_uat_name_resource
  ]
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_General_AlphabeticallySortedComputers 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_General|AlphabeticallySortedComputers'
  properties: {
    category: 'General Exploration'
    displayName: 'All Computers with their most recent data'
    version: 2
    query: 'search not(ObjectName == "Advisor Metrics" or ObjectName == "ManagedSpace") | summarize AggregatedValue = max(TimeGenerated) by Computer | limit 500000 | sort by Computer asc\r\n// Oql: NOT(ObjectName="Advisor Metrics" OR ObjectName=ManagedSpace) | measure max(TimeGenerated) by Computer | top 500000 | Sort Computer // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_General_dataPointsPerManagementGroup 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_General|dataPointsPerManagementGroup'
  properties: {
    category: 'General Exploration'
    displayName: 'Which Management Group is generating the most data points?'
    version: 2
    query: 'search * | summarize AggregatedValue = count() by ManagementGroupName\r\n// Oql: * | Measure count() by ManagementGroupName // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_General_dataTypeDistribution 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_General|dataTypeDistribution'
  properties: {
    category: 'General Exploration'
    displayName: 'Distribution of data Types'
    version: 2
    query: 'search * | extend Type = $table | summarize AggregatedValue = count() by Type\r\n// Oql: * | Measure count() by Type // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_General_StaleComputers 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_General|StaleComputers'
  properties: {
    category: 'General Exploration'
    displayName: 'Stale Computers (data older than 24 hours)'
    version: 2
    query: 'search not(ObjectName == "Advisor Metrics" or ObjectName == "ManagedSpace") | summarize lastdata = max(TimeGenerated) by Computer | limit 500000 | where lastdata < ago(24h)\r\n// Oql: NOT(ObjectName="Advisor Metrics" OR ObjectName=ManagedSpace) | measure max(TimeGenerated) as lastdata by Computer | top 500000 | where lastdata < NOW-24HOURS // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_AllEvents 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|AllEvents'
  properties: {
    category: 'Log Management'
    displayName: 'All Events'
    version: 2
    query: 'Event | sort by TimeGenerated desc\r\n// Oql: Type=Event // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_AllSyslog 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|AllSyslog'
  properties: {
    category: 'Log Management'
    displayName: 'All Syslogs'
    version: 2
    query: 'Syslog | sort by TimeGenerated desc\r\n// Oql: Type=Syslog // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_AllSyslogByFacility 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|AllSyslogByFacility'
  properties: {
    category: 'Log Management'
    displayName: 'All Syslog Records grouped by Facility'
    version: 2
    query: 'Syslog | summarize AggregatedValue = count() by Facility\r\n// Oql: Type=Syslog | Measure count() by Facility // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_AllSyslogByProcess 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|AllSyslogByProcessName'
  properties: {
    category: 'Log Management'
    displayName: 'All Syslog Records grouped by ProcessName'
    version: 2
    query: 'Syslog | summarize AggregatedValue = count() by ProcessName\r\n// Oql: Type=Syslog | Measure count() by ProcessName // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_AllSyslogsWithErrors 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|AllSyslogsWithErrors'
  properties: {
    category: 'Log Management'
    displayName: 'All Syslog Records with Errors'
    version: 2
    query: 'Syslog | where SeverityLevel == "error" | sort by TimeGenerated desc\r\n// Oql: Type=Syslog SeverityLevel=error // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_AverageHTTPRequestTimeByClientIPAddress 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|AverageHTTPRequestTimeByClientIPAddress'
  properties: {
    category: 'Log Management'
    displayName: 'Average HTTP Request time by Client IP Address'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = avg(TimeTaken) by cIP\r\n// Oql: Type=W3CIISLog | Measure Avg(TimeTaken) by cIP // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_AverageHTTPRequestTimeHTTPMethod 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|AverageHTTPRequestTimeHTTPMethod'
  properties: {
    category: 'Log Management'
    displayName: 'Average HTTP Request time by HTTP Method'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = avg(TimeTaken) by csMethod\r\n// Oql: Type=W3CIISLog | Measure Avg(TimeTaken) by csMethod // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_CountIISLogEntriesClientIPAddress 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|CountIISLogEntriesClientIPAddress'
  properties: {
    category: 'Log Management'
    displayName: 'Count of IIS Log Entries by Client IP Address'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by cIP\r\n// Oql: Type=W3CIISLog | Measure count() by cIP // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_CountIISLogEntriesHTTPRequestMethod 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|CountIISLogEntriesHTTPRequestMethod'
  properties: {
    category: 'Log Management'
    displayName: 'Count of IIS Log Entries by HTTP Request Method'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csMethod\r\n// Oql: Type=W3CIISLog | Measure count() by csMethod // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_CountIISLogEntriesHTTPUserAgent 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|CountIISLogEntriesHTTPUserAgent'
  properties: {
    category: 'Log Management'
    displayName: 'Count of IIS Log Entries by HTTP User Agent'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csUserAgent\r\n// Oql: Type=W3CIISLog | Measure count() by csUserAgent // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_CountOfIISLogEntriesByHostRequestedByClient 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|CountOfIISLogEntriesByHostRequestedByClient'
  properties: {
    category: 'Log Management'
    displayName: 'Count of IIS Log Entries by Host requested by client'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csHost\r\n// Oql: Type=W3CIISLog | Measure count() by csHost // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_CountOfIISLogEntriesByURLForHost 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|CountOfIISLogEntriesByURLForHost'
  properties: {
    category: 'Log Management'
    displayName: 'Count of IIS Log Entries by URL for the host "www.contoso.com" (replace with your own)'
    version: 2
    query: 'search csHost == "www.contoso.com" | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csUriStem\r\n// Oql: Type=W3CIISLog csHost="www.contoso.com" | Measure count() by csUriStem // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_CountOfIISLogEntriesByURLRequestedByClient 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|CountOfIISLogEntriesByURLRequestedByClient'
  properties: {
    category: 'Log Management'
    displayName: 'Count of IIS Log Entries by URL requested by client (without query strings)'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csUriStem\r\n// Oql: Type=W3CIISLog | Measure count() by csUriStem // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_CountOfWarningEvents 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|CountOfWarningEvents'
  properties: {
    category: 'Log Management'
    displayName: 'Count of Events with level "Warning" grouped by Event ID'
    version: 2
    query: 'Event | where EventLevelName == "warning" | summarize AggregatedValue = count() by EventID\r\n// Oql: Type=Event EventLevelName=warning | Measure count() by EventID // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_DisplayBreakdownRespondCodes 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|DisplayBreakdownRespondCodes'
  properties: {
    category: 'Log Management'
    displayName: 'Shows breakdown of response codes'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by scStatus\r\n// Oql: Type=W3CIISLog | Measure count() by scStatus // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_EventsByEventLog 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|EventsByEventLog'
  properties: {
    category: 'Log Management'
    displayName: 'Count of Events grouped by Event Log'
    version: 2
    query: 'Event | summarize AggregatedValue = count() by EventLog\r\n// Oql: Type=Event | Measure count() by EventLog // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_EventsByEventsID 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|EventsByEventsID'
  properties: {
    category: 'Log Management'
    displayName: 'Count of Events grouped by Event ID'
    version: 2
    query: 'Event | summarize AggregatedValue = count() by EventID\r\n// Oql: Type=Event | Measure count() by EventID // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_EventsByEventSource 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|EventsByEventSource'
  properties: {
    category: 'Log Management'
    displayName: 'Count of Events grouped by Event Source'
    version: 2
    query: 'Event | summarize AggregatedValue = count() by Source\r\n// Oql: Type=Event | Measure count() by Source // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_EventsInOMBetween2000to3000 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|EventsInOMBetween2000to3000'
  properties: {
    category: 'Log Management'
    displayName: 'Events in the Operations Manager Event Log whose Event ID is in the range between 2000 and 3000'
    version: 2
    query: 'Event | where EventLog == "Operations Manager" and EventID >= 2000 and EventID <= 3000 | sort by TimeGenerated desc\r\n// Oql: Type=Event EventLog="Operations Manager" EventID:[2000..3000] // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_EventsWithStartedinEventID 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|EventsWithStartedinEventID'
  properties: {
    category: 'Log Management'
    displayName: 'Count of Events containing the word "started" grouped by EventID'
    version: 2
    query: 'search in (Event) "started" | summarize AggregatedValue = count() by EventID\r\n// Oql: Type=Event "started" | Measure count() by EventID // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_FindMaximumTimeTakenForEachPage 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|FindMaximumTimeTakenForEachPage'
  properties: {
    category: 'Log Management'
    displayName: 'Find the maximum time taken for each page'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = max(TimeTaken) by csUriStem\r\n// Oql: Type=W3CIISLog | Measure Max(TimeTaken) by csUriStem // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_IISLogEntriesForClientIP 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|IISLogEntriesForClientIP'
  properties: {
    category: 'Log Management'
    displayName: 'IIS Log Entries for a specific client IP Address (replace with your own)'
    version: 2
    query: 'search cIP == "192.168.0.1" | extend Type = $table | where Type == W3CIISLog | sort by TimeGenerated desc | project csUriStem, scBytes, csBytes, TimeTaken, scStatus\r\n// Oql: Type=W3CIISLog cIP="192.168.0.1" | Select csUriStem,scBytes,csBytes,TimeTaken,scStatus // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_ListAllIISLogEntries 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|ListAllIISLogEntries'
  properties: {
    category: 'Log Management'
    displayName: 'All IIS Log Entries'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | sort by TimeGenerated desc\r\n// Oql: Type=W3CIISLog // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_NoOfConnectionsToOMSDKService 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|NoOfConnectionsToOMSDKService'
  properties: {
    category: 'Log Management'
    displayName: 'How many connections to Operations Manager\'s SDK service by day'
    version: 2
    query: 'Event | where EventID == 26328 and EventLog == "Operations Manager" | summarize AggregatedValue = count() by bin(TimeGenerated, 1d) | sort by TimeGenerated desc\r\n// Oql: Type=Event EventID=26328 EventLog="Operations Manager" | Measure count() interval 1DAY // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_ServerRestartTime 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|ServerRestartTime'
  properties: {
    category: 'Log Management'
    displayName: 'When did my servers initiate restart?'
    version: 2
    query: 'search in (Event) "shutdown" and EventLog == "System" and Source == "User32" and EventID == 1074 | sort by TimeGenerated desc | project TimeGenerated, Computer\r\n// Oql: shutdown Type=Event EventLog=System Source=User32 EventID=1074 | Select TimeGenerated,Computer // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_Show404PagesList 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|Show404PagesList'
  properties: {
    category: 'Log Management'
    displayName: 'Shows which pages people are getting a 404 for'
    version: 2
    query: 'search scStatus == 404 | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by csUriStem\r\n// Oql: Type=W3CIISLog scStatus=404 | Measure count() by csUriStem // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_ShowServersThrowingInternalServerError 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|ShowServersThrowingInternalServerError'
  properties: {
    category: 'Log Management'
    displayName: 'Shows servers that are throwing internal server error'
    version: 2
    query: 'search scStatus == 500 | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = count() by sComputerName\r\n// Oql: Type=W3CIISLog scStatus=500 | Measure count() by sComputerName // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_TotalBytesReceivedByEachAzureRoleInstance 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|TotalBytesReceivedByEachAzureRoleInstance'
  properties: {
    category: 'Log Management'
    displayName: 'Total Bytes received by each Azure Role Instance'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = sum(csBytes) by RoleInstance\r\n// Oql: Type=W3CIISLog | Measure Sum(csBytes) by RoleInstance // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_TotalBytesReceivedByEachIISComputer 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|TotalBytesReceivedByEachIISComputer'
  properties: {
    category: 'Log Management'
    displayName: 'Total Bytes received by each IIS Computer'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = sum(csBytes) by Computer | limit 500000\r\n// Oql: Type=W3CIISLog | Measure Sum(csBytes) by Computer | top 500000 // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_TotalBytesRespondedToClientsByClientIPAddress 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|TotalBytesRespondedToClientsByClientIPAddress'
  properties: {
    category: 'Log Management'
    displayName: 'Total Bytes responded back to clients by Client IP Address'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = sum(scBytes) by cIP\r\n// Oql: Type=W3CIISLog | Measure Sum(scBytes) by cIP // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_TotalBytesRespondedToClientsByEachIISServerIPAddress 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|TotalBytesRespondedToClientsByEachIISServerIPAddress'
  properties: {
    category: 'Log Management'
    displayName: 'Total Bytes responded back to clients by each IIS ServerIP Address'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = sum(scBytes) by sIP\r\n// Oql: Type=W3CIISLog | Measure Sum(scBytes) by sIP // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_TotalBytesSentByClientIPAddress 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|TotalBytesSentByClientIPAddress'
  properties: {
    category: 'Log Management'
    displayName: 'Total Bytes sent by Client IP Address'
    version: 2
    query: 'search * | extend Type = $table | where Type == W3CIISLog | summarize AggregatedValue = sum(csBytes) by cIP\r\n// Oql: Type=W3CIISLog | Measure Sum(csBytes) by cIP // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PEF: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_WarningEvents 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|WarningEvents'
  properties: {
    category: 'Log Management'
    displayName: 'All Events with level "Warning"'
    version: 2
    query: 'Event | where EventLevelName == "warning" | sort by TimeGenerated desc\r\n// Oql: Type=Event EventLevelName=warning // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_WindowsFireawallPolicySettingsChanged 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|WindowsFireawallPolicySettingsChanged'
  properties: {
    category: 'Log Management'
    displayName: 'Windows Firewall Policy settings have changed'
    version: 2
    query: 'Event | where EventLog == "Microsoft-Windows-Windows Firewall With Advanced Security/Firewall" and EventID == 2008 | sort by TimeGenerated desc\r\n// Oql: Type=Event EventLog="Microsoft-Windows-Windows Firewall With Advanced Security/Firewall" EventID=2008 // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogManagement_WindowsFireawallPolicySettingsChangedByMachines 'Microsoft.OperationalInsights/workspaces/savedSearches@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogManagement(${workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name})_LogManagement|WindowsFireawallPolicySettingsChangedByMachines'
  properties: {
    category: 'Log Management'
    displayName: 'On which machines and how many times have Windows Firewall Policy settings changed'
    version: 2
    query: 'Event | where EventLog == "Microsoft-Windows-Windows Firewall With Advanced Security/Firewall" and EventID == 2008 | summarize AggregatedValue = count() by Computer | limit 500000\r\n// Oql: Type=Event EventLog="Microsoft-Windows-Windows Firewall With Advanced Security/Firewall" EventID=2008 | measure count() by Computer | top 500000 // Args: {OQ: True; WorkspaceId: 00000000-0000-0000-0000-000000000000} // Settings: {PTT: True; SortI: True; SortF: True} // Version: 0.1.122'
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AACAudit 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AACAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AACAudit'
      displayName: 'AACAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AACHttpRequest 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AACHttpRequest'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AACHttpRequest'
      displayName: 'AACHttpRequest'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADB2CRequestLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADB2CRequestLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADB2CRequestLogs'
      displayName: 'AADB2CRequestLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADCustomSecurityAttributeAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADCustomSecurityAttributeAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADCustomSecurityAttributeAuditLogs'
      displayName: 'AADCustomSecurityAttributeAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADDomainServicesAccountLogon 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADDomainServicesAccountLogon'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesAccountLogon'
      displayName: 'AADDomainServicesAccountLogon'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADDomainServicesAccountManagement 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADDomainServicesAccountManagement'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesAccountManagement'
      displayName: 'AADDomainServicesAccountManagement'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADDomainServicesDirectoryServiceAccess 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADDomainServicesDirectoryServiceAccess'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesDirectoryServiceAccess'
      displayName: 'AADDomainServicesDirectoryServiceAccess'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADDomainServicesDNSAuditsDynamicUpdates 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADDomainServicesDNSAuditsDynamicUpdates'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesDNSAuditsDynamicUpdates'
      displayName: 'AADDomainServicesDNSAuditsDynamicUpdates'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADDomainServicesDNSAuditsGeneral 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADDomainServicesDNSAuditsGeneral'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesDNSAuditsGeneral'
      displayName: 'AADDomainServicesDNSAuditsGeneral'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADDomainServicesLogonLogoff 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADDomainServicesLogonLogoff'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesLogonLogoff'
      displayName: 'AADDomainServicesLogonLogoff'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADDomainServicesPolicyChange 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADDomainServicesPolicyChange'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesPolicyChange'
      displayName: 'AADDomainServicesPolicyChange'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADDomainServicesPrivilegeUse 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADDomainServicesPrivilegeUse'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesPrivilegeUse'
      displayName: 'AADDomainServicesPrivilegeUse'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADDomainServicesSystemSecurity 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADDomainServicesSystemSecurity'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADDomainServicesSystemSecurity'
      displayName: 'AADDomainServicesSystemSecurity'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADManagedIdentitySignInLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADManagedIdentitySignInLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADManagedIdentitySignInLogs'
      displayName: 'AADManagedIdentitySignInLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADNonInteractiveUserSignInLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADNonInteractiveUserSignInLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADNonInteractiveUserSignInLogs'
      displayName: 'AADNonInteractiveUserSignInLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADProvisioningLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADProvisioningLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADProvisioningLogs'
      displayName: 'AADProvisioningLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADRiskyServicePrincipals 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADRiskyServicePrincipals'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADRiskyServicePrincipals'
      displayName: 'AADRiskyServicePrincipals'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADRiskyUsers 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADRiskyUsers'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADRiskyUsers'
      displayName: 'AADRiskyUsers'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADServicePrincipalRiskEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADServicePrincipalRiskEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADServicePrincipalRiskEvents'
      displayName: 'AADServicePrincipalRiskEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADServicePrincipalSignInLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADServicePrincipalSignInLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADServicePrincipalSignInLogs'
      displayName: 'AADServicePrincipalSignInLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AADUserRiskEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AADUserRiskEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AADUserRiskEvents'
      displayName: 'AADUserRiskEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ABSBotRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ABSBotRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ABSBotRequests'
      displayName: 'ABSBotRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACICollaborationAudit 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACICollaborationAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACICollaborationAudit'
      displayName: 'ACICollaborationAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACRConnectedClientList 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACRConnectedClientList'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACRConnectedClientList'
      displayName: 'ACRConnectedClientList'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACREntraAuthenticationAuditLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACREntraAuthenticationAuditLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACREntraAuthenticationAuditLog'
      displayName: 'ACREntraAuthenticationAuditLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSAdvancedMessagingOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSAdvancedMessagingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSAdvancedMessagingOperations'
      displayName: 'ACSAdvancedMessagingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSAuthIncomingOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSAuthIncomingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSAuthIncomingOperations'
      displayName: 'ACSAuthIncomingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSBillingUsage 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSBillingUsage'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSBillingUsage'
      displayName: 'ACSBillingUsage'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallAutomationIncomingOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallAutomationIncomingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallAutomationIncomingOperations'
      displayName: 'ACSCallAutomationIncomingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallAutomationMediaSummary 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallAutomationMediaSummary'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallAutomationMediaSummary'
      displayName: 'ACSCallAutomationMediaSummary'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallClientMediaStatsTimeSeries 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallClientMediaStatsTimeSeries'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallClientMediaStatsTimeSeries'
      displayName: 'ACSCallClientMediaStatsTimeSeries'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallClientOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallClientOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallClientOperations'
      displayName: 'ACSCallClientOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallClosedCaptionsSummary 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallClosedCaptionsSummary'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallClosedCaptionsSummary'
      displayName: 'ACSCallClosedCaptionsSummary'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallDiagnostics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallDiagnostics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallDiagnostics'
      displayName: 'ACSCallDiagnostics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallDiagnosticsUpdates 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallDiagnosticsUpdates'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallDiagnosticsUpdates'
      displayName: 'ACSCallDiagnosticsUpdates'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallingMetrics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallingMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallingMetrics'
      displayName: 'ACSCallingMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallRecordingIncomingOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallRecordingIncomingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallRecordingIncomingOperations'
      displayName: 'ACSCallRecordingIncomingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallRecordingSummary 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallRecordingSummary'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallRecordingSummary'
      displayName: 'ACSCallRecordingSummary'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallSummary 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallSummary'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallSummary'
      displayName: 'ACSCallSummary'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallSummaryUpdates 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallSummaryUpdates'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallSummaryUpdates'
      displayName: 'ACSCallSummaryUpdates'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSCallSurvey 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSCallSurvey'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSCallSurvey'
      displayName: 'ACSCallSurvey'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSChatIncomingOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSChatIncomingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSChatIncomingOperations'
      displayName: 'ACSChatIncomingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSEmailSendMailOperational 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSEmailSendMailOperational'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSEmailSendMailOperational'
      displayName: 'ACSEmailSendMailOperational'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSEmailStatusUpdateOperational 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSEmailStatusUpdateOperational'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSEmailStatusUpdateOperational'
      displayName: 'ACSEmailStatusUpdateOperational'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSEmailUserEngagementOperational 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSEmailUserEngagementOperational'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSEmailUserEngagementOperational'
      displayName: 'ACSEmailUserEngagementOperational'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSJobRouterIncomingOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSJobRouterIncomingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSJobRouterIncomingOperations'
      displayName: 'ACSJobRouterIncomingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSOptOutManagementOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSOptOutManagementOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSOptOutManagementOperations'
      displayName: 'ACSOptOutManagementOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSRoomsIncomingOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSRoomsIncomingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSRoomsIncomingOperations'
      displayName: 'ACSRoomsIncomingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ACSSMSIncomingOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ACSSMSIncomingOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ACSSMSIncomingOperations'
      displayName: 'ACSSMSIncomingOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADAssessmentRecommendation'
      displayName: 'ADAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AddonAzureBackupAlerts 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AddonAzureBackupAlerts'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AddonAzureBackupAlerts'
      displayName: 'AddonAzureBackupAlerts'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AddonAzureBackupJobs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AddonAzureBackupJobs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AddonAzureBackupJobs'
      displayName: 'AddonAzureBackupJobs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AddonAzureBackupPolicy 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AddonAzureBackupPolicy'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AddonAzureBackupPolicy'
      displayName: 'AddonAzureBackupPolicy'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AddonAzureBackupProtectedInstance 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AddonAzureBackupProtectedInstance'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AddonAzureBackupProtectedInstance'
      displayName: 'AddonAzureBackupProtectedInstance'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AddonAzureBackupStorage 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AddonAzureBackupStorage'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AddonAzureBackupStorage'
      displayName: 'AddonAzureBackupStorage'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFActivityRun 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFActivityRun'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFActivityRun'
      displayName: 'ADFActivityRun'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFAirflowSchedulerLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFAirflowSchedulerLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFAirflowSchedulerLogs'
      displayName: 'ADFAirflowSchedulerLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFAirflowTaskLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFAirflowTaskLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFAirflowTaskLogs'
      displayName: 'ADFAirflowTaskLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFAirflowWebLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFAirflowWebLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFAirflowWebLogs'
      displayName: 'ADFAirflowWebLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFAirflowWorkerLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFAirflowWorkerLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFAirflowWorkerLogs'
      displayName: 'ADFAirflowWorkerLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFPipelineRun 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFPipelineRun'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFPipelineRun'
      displayName: 'ADFPipelineRun'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFSandboxActivityRun 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFSandboxActivityRun'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSandboxActivityRun'
      displayName: 'ADFSandboxActivityRun'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFSandboxPipelineRun 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFSandboxPipelineRun'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSandboxPipelineRun'
      displayName: 'ADFSandboxPipelineRun'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFSSignInLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFSSignInLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSignInLogs'
      displayName: 'ADFSSignInLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFSSISIntegrationRuntimeLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFSSISIntegrationRuntimeLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISIntegrationRuntimeLogs'
      displayName: 'ADFSSISIntegrationRuntimeLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFSSISPackageEventMessageContext 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFSSISPackageEventMessageContext'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISPackageEventMessageContext'
      displayName: 'ADFSSISPackageEventMessageContext'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFSSISPackageEventMessages 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFSSISPackageEventMessages'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISPackageEventMessages'
      displayName: 'ADFSSISPackageEventMessages'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFSSISPackageExecutableStatistics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFSSISPackageExecutableStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISPackageExecutableStatistics'
      displayName: 'ADFSSISPackageExecutableStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFSSISPackageExecutionComponentPhases 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFSSISPackageExecutionComponentPhases'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISPackageExecutionComponentPhases'
      displayName: 'ADFSSISPackageExecutionComponentPhases'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFSSISPackageExecutionDataStatistics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFSSISPackageExecutionDataStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFSSISPackageExecutionDataStatistics'
      displayName: 'ADFSSISPackageExecutionDataStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADFTriggerRun 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADFTriggerRun'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADFTriggerRun'
      displayName: 'ADFTriggerRun'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADReplicationResult 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADReplicationResult'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADReplicationResult'
      displayName: 'ADReplicationResult'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADSecurityAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADSecurityAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADSecurityAssessmentRecommendation'
      displayName: 'ADSecurityAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADTDataHistoryOperation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADTDataHistoryOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADTDataHistoryOperation'
      displayName: 'ADTDataHistoryOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADTDigitalTwinsOperation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADTDigitalTwinsOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADTDigitalTwinsOperation'
      displayName: 'ADTDigitalTwinsOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADTEventRoutesOperation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADTEventRoutesOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADTEventRoutesOperation'
      displayName: 'ADTEventRoutesOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADTModelsOperation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADTModelsOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADTModelsOperation'
      displayName: 'ADTModelsOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADTQueryOperation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADTQueryOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADTQueryOperation'
      displayName: 'ADTQueryOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADXCommand 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADXCommand'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXCommand'
      displayName: 'ADXCommand'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADXDataOperation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADXDataOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXDataOperation'
      displayName: 'ADXDataOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADXIngestionBatching 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADXIngestionBatching'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXIngestionBatching'
      displayName: 'ADXIngestionBatching'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADXJournal 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADXJournal'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXJournal'
      displayName: 'ADXJournal'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADXQuery 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADXQuery'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXQuery'
      displayName: 'ADXQuery'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADXTableDetails 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADXTableDetails'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXTableDetails'
      displayName: 'ADXTableDetails'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ADXTableUsageStatistics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ADXTableUsageStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ADXTableUsageStatistics'
      displayName: 'ADXTableUsageStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AegDataPlaneRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AegDataPlaneRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AegDataPlaneRequests'
      displayName: 'AegDataPlaneRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AegDeliveryFailureLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AegDeliveryFailureLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AegDeliveryFailureLogs'
      displayName: 'AegDeliveryFailureLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AegPublishFailureLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AegPublishFailureLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AegPublishFailureLogs'
      displayName: 'AegPublishFailureLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AEWAssignmentBlobLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AEWAssignmentBlobLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AEWAssignmentBlobLogs'
      displayName: 'AEWAssignmentBlobLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AEWAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AEWAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AEWAuditLogs'
      displayName: 'AEWAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AEWComputePipelinesLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AEWComputePipelinesLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AEWComputePipelinesLogs'
      displayName: 'AEWComputePipelinesLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AEWExperimentAssignmentSummary 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AEWExperimentAssignmentSummary'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AEWExperimentAssignmentSummary'
      displayName: 'AEWExperimentAssignmentSummary'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AEWExperimentScorecardMetricPairs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AEWExperimentScorecardMetricPairs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AEWExperimentScorecardMetricPairs'
      displayName: 'AEWExperimentScorecardMetricPairs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AEWExperimentScorecards 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AEWExperimentScorecards'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AEWExperimentScorecards'
      displayName: 'AEWExperimentScorecards'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AFSAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AFSAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AFSAuditLogs'
      displayName: 'AFSAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AGCAccessLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AGCAccessLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AGCAccessLogs'
      displayName: 'AGCAccessLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AgriFoodApplicationAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AgriFoodApplicationAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodApplicationAuditLogs'
      displayName: 'AgriFoodApplicationAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AgriFoodFarmManagementLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AgriFoodFarmManagementLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodFarmManagementLogs'
      displayName: 'AgriFoodFarmManagementLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AgriFoodFarmOperationLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AgriFoodFarmOperationLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodFarmOperationLogs'
      displayName: 'AgriFoodFarmOperationLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AgriFoodInsightLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AgriFoodInsightLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodInsightLogs'
      displayName: 'AgriFoodInsightLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AgriFoodJobProcessedLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AgriFoodJobProcessedLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodJobProcessedLogs'
      displayName: 'AgriFoodJobProcessedLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AgriFoodModelInferenceLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AgriFoodModelInferenceLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodModelInferenceLogs'
      displayName: 'AgriFoodModelInferenceLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AgriFoodProviderAuthLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AgriFoodProviderAuthLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodProviderAuthLogs'
      displayName: 'AgriFoodProviderAuthLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AgriFoodSatelliteLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AgriFoodSatelliteLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodSatelliteLogs'
      displayName: 'AgriFoodSatelliteLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AgriFoodSensorManagementLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AgriFoodSensorManagementLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodSensorManagementLogs'
      displayName: 'AgriFoodSensorManagementLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AgriFoodWeatherLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AgriFoodWeatherLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AgriFoodWeatherLogs'
      displayName: 'AgriFoodWeatherLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AGSGrafanaLoginEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AGSGrafanaLoginEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AGSGrafanaLoginEvents'
      displayName: 'AGSGrafanaLoginEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AGSGrafanaUsageInsightsEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AGSGrafanaUsageInsightsEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AGSGrafanaUsageInsightsEvents'
      displayName: 'AGSGrafanaUsageInsightsEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AGWAccessLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AGWAccessLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AGWAccessLogs'
      displayName: 'AGWAccessLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AGWFirewallLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AGWFirewallLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AGWFirewallLogs'
      displayName: 'AGWFirewallLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AGWPerformanceLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AGWPerformanceLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AGWPerformanceLogs'
      displayName: 'AGWPerformanceLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AHDSDeidAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AHDSDeidAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AHDSDeidAuditLogs'
      displayName: 'AHDSDeidAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AHDSDicomAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AHDSDicomAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AHDSDicomAuditLogs'
      displayName: 'AHDSDicomAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AHDSDicomDiagnosticLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AHDSDicomDiagnosticLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AHDSDicomDiagnosticLogs'
      displayName: 'AHDSDicomDiagnosticLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AHDSMedTechDiagnosticLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AHDSMedTechDiagnosticLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AHDSMedTechDiagnosticLogs'
      displayName: 'AHDSMedTechDiagnosticLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AirflowDagProcessingLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AirflowDagProcessingLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AirflowDagProcessingLogs'
      displayName: 'AirflowDagProcessingLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AKSAudit 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AKSAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AKSAudit'
      displayName: 'AKSAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AKSAuditAdmin 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AKSAuditAdmin'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AKSAuditAdmin'
      displayName: 'AKSAuditAdmin'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AKSControlPlane 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AKSControlPlane'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AKSControlPlane'
      displayName: 'AKSControlPlane'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ALBHealthEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ALBHealthEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ALBHealthEvent'
      displayName: 'ALBHealthEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_Alert 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'Alert'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Alert'
      displayName: 'Alert'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlComputeClusterEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlComputeClusterEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlComputeClusterEvent'
      displayName: 'AmlComputeClusterEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlComputeClusterNodeEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlComputeClusterNodeEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlComputeClusterNodeEvent'
      displayName: 'AmlComputeClusterNodeEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlComputeCpuGpuUtilization 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlComputeCpuGpuUtilization'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlComputeCpuGpuUtilization'
      displayName: 'AmlComputeCpuGpuUtilization'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlComputeInstanceEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlComputeInstanceEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlComputeInstanceEvent'
      displayName: 'AmlComputeInstanceEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlComputeJobEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlComputeJobEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlComputeJobEvent'
      displayName: 'AmlComputeJobEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlDataLabelEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlDataLabelEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlDataLabelEvent'
      displayName: 'AmlDataLabelEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlDataSetEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlDataSetEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlDataSetEvent'
      displayName: 'AmlDataSetEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlDataStoreEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlDataStoreEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlDataStoreEvent'
      displayName: 'AmlDataStoreEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlDeploymentEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlDeploymentEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlDeploymentEvent'
      displayName: 'AmlDeploymentEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlEnvironmentEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlEnvironmentEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlEnvironmentEvent'
      displayName: 'AmlEnvironmentEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlInferencingEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlInferencingEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlInferencingEvent'
      displayName: 'AmlInferencingEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlModelsEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlModelsEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlModelsEvent'
      displayName: 'AmlModelsEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlOnlineEndpointConsoleLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlOnlineEndpointConsoleLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlOnlineEndpointConsoleLog'
      displayName: 'AmlOnlineEndpointConsoleLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlOnlineEndpointEventLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlOnlineEndpointEventLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlOnlineEndpointEventLog'
      displayName: 'AmlOnlineEndpointEventLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlOnlineEndpointTrafficLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlOnlineEndpointTrafficLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlOnlineEndpointTrafficLog'
      displayName: 'AmlOnlineEndpointTrafficLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlPipelineEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlPipelineEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlPipelineEvent'
      displayName: 'AmlPipelineEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlRegistryReadEventsLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlRegistryReadEventsLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlRegistryReadEventsLog'
      displayName: 'AmlRegistryReadEventsLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlRegistryWriteEventsLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlRegistryWriteEventsLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlRegistryWriteEventsLog'
      displayName: 'AmlRegistryWriteEventsLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlRunEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlRunEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlRunEvent'
      displayName: 'AmlRunEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AmlRunStatusChangedEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AmlRunStatusChangedEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AmlRunStatusChangedEvent'
      displayName: 'AmlRunStatusChangedEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AMSKeyDeliveryRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AMSKeyDeliveryRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AMSKeyDeliveryRequests'
      displayName: 'AMSKeyDeliveryRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AMSLiveEventOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AMSLiveEventOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AMSLiveEventOperations'
      displayName: 'AMSLiveEventOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AMSMediaAccountHealth 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AMSMediaAccountHealth'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AMSMediaAccountHealth'
      displayName: 'AMSMediaAccountHealth'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AMSStreamingEndpointRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AMSStreamingEndpointRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AMSStreamingEndpointRequests'
      displayName: 'AMSStreamingEndpointRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AMWMetricsUsageDetails 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AMWMetricsUsageDetails'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AMWMetricsUsageDetails'
      displayName: 'AMWMetricsUsageDetails'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ANFFileAccess 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ANFFileAccess'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ANFFileAccess'
      displayName: 'ANFFileAccess'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AOIDatabaseQuery 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AOIDatabaseQuery'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AOIDatabaseQuery'
      displayName: 'AOIDatabaseQuery'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AOIDigestion 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AOIDigestion'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AOIDigestion'
      displayName: 'AOIDigestion'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AOIStorage 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AOIStorage'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AOIStorage'
      displayName: 'AOIStorage'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ApiManagementGatewayLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ApiManagementGatewayLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ApiManagementGatewayLogs'
      displayName: 'ApiManagementGatewayLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ApiManagementWebSocketConnectionLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ApiManagementWebSocketConnectionLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ApiManagementWebSocketConnectionLogs'
      displayName: 'ApiManagementWebSocketConnectionLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_APIMDevPortalAuditDiagnosticLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'APIMDevPortalAuditDiagnosticLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'APIMDevPortalAuditDiagnosticLog'
      displayName: 'APIMDevPortalAuditDiagnosticLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppAvailabilityResults 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppAvailabilityResults'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppAvailabilityResults'
      displayName: 'AppAvailabilityResults'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppBrowserTimings 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppBrowserTimings'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppBrowserTimings'
      displayName: 'AppBrowserTimings'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppCenterError 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppCenterError'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppCenterError'
      displayName: 'AppCenterError'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppDependencies 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppDependencies'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppDependencies'
      displayName: 'AppDependencies'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppEnvSessionConsoleLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppEnvSessionConsoleLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppEnvSessionConsoleLogs'
      displayName: 'AppEnvSessionConsoleLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppEnvSessionLifecycleLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppEnvSessionLifecycleLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppEnvSessionLifecycleLogs'
      displayName: 'AppEnvSessionLifecycleLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppEnvSessionPoolEventLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppEnvSessionPoolEventLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppEnvSessionPoolEventLogs'
      displayName: 'AppEnvSessionPoolEventLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppEnvSpringAppConsoleLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppEnvSpringAppConsoleLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppEnvSpringAppConsoleLogs'
      displayName: 'AppEnvSpringAppConsoleLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppEvents'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppEvents'
      displayName: 'AppEvents'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppExceptions 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppExceptions'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppExceptions'
      displayName: 'AppExceptions'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppMetrics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppMetrics'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppMetrics'
      displayName: 'AppMetrics'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppPageViews 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppPageViews'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppPageViews'
      displayName: 'AppPageViews'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppPerformanceCounters 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppPerformanceCounters'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppPerformanceCounters'
      displayName: 'AppPerformanceCounters'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppPlatformBuildLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppPlatformBuildLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppPlatformBuildLogs'
      displayName: 'AppPlatformBuildLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppPlatformContainerEventLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppPlatformContainerEventLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppPlatformContainerEventLogs'
      displayName: 'AppPlatformContainerEventLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppPlatformIngressLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppPlatformIngressLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppPlatformIngressLogs'
      displayName: 'AppPlatformIngressLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppPlatformLogsforSpring 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppPlatformLogsforSpring'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppPlatformLogsforSpring'
      displayName: 'AppPlatformLogsforSpring'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppPlatformSystemLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppPlatformSystemLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppPlatformSystemLogs'
      displayName: 'AppPlatformSystemLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppRequests'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppRequests'
      displayName: 'AppRequests'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppServiceAntivirusScanAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppServiceAntivirusScanAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceAntivirusScanAuditLogs'
      displayName: 'AppServiceAntivirusScanAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppServiceAppLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppServiceAppLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceAppLogs'
      displayName: 'AppServiceAppLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppServiceAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppServiceAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceAuditLogs'
      displayName: 'AppServiceAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppServiceAuthenticationLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppServiceAuthenticationLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceAuthenticationLogs'
      displayName: 'AppServiceAuthenticationLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppServiceConsoleLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppServiceConsoleLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceConsoleLogs'
      displayName: 'AppServiceConsoleLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppServiceEnvironmentPlatformLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppServiceEnvironmentPlatformLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceEnvironmentPlatformLogs'
      displayName: 'AppServiceEnvironmentPlatformLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppServiceFileAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppServiceFileAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceFileAuditLogs'
      displayName: 'AppServiceFileAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppServiceHTTPLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppServiceHTTPLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceHTTPLogs'
      displayName: 'AppServiceHTTPLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppServiceIPSecAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppServiceIPSecAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceIPSecAuditLogs'
      displayName: 'AppServiceIPSecAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppServicePlatformLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppServicePlatformLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServicePlatformLogs'
      displayName: 'AppServicePlatformLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppServiceServerlessSecurityPluginData 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppServiceServerlessSecurityPluginData'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AppServiceServerlessSecurityPluginData'
      displayName: 'AppServiceServerlessSecurityPluginData'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppSystemEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppSystemEvents'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppSystemEvents'
      displayName: 'AppSystemEvents'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AppTraces 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AppTraces'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AppTraces'
      displayName: 'AppTraces'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ArcK8sAudit 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ArcK8sAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ArcK8sAudit'
      displayName: 'ArcK8sAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ArcK8sAuditAdmin 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ArcK8sAuditAdmin'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ArcK8sAuditAdmin'
      displayName: 'ArcK8sAuditAdmin'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ArcK8sControlPlane 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ArcK8sControlPlane'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ArcK8sControlPlane'
      displayName: 'ArcK8sControlPlane'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ASCAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ASCAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ASCAuditLogs'
      displayName: 'ASCAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ASCDeviceEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ASCDeviceEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ASCDeviceEvents'
      displayName: 'ASCDeviceEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ASRJobs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ASRJobs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ASRJobs'
      displayName: 'ASRJobs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ASRReplicatedItems 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ASRReplicatedItems'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ASRReplicatedItems'
      displayName: 'ASRReplicatedItems'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ATCExpressRouteCircuitIpfix 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ATCExpressRouteCircuitIpfix'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ATCExpressRouteCircuitIpfix'
      displayName: 'ATCExpressRouteCircuitIpfix'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ATCMicrosoftPeeringMetadata 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ATCMicrosoftPeeringMetadata'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ATCMicrosoftPeeringMetadata'
      displayName: 'ATCMicrosoftPeeringMetadata'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ATCPrivatePeeringMetadata 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ATCPrivatePeeringMetadata'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ATCPrivatePeeringMetadata'
      displayName: 'ATCPrivatePeeringMetadata'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AuditLogs'
      displayName: 'AuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AutoscaleEvaluationsLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AutoscaleEvaluationsLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AutoscaleEvaluationsLog'
      displayName: 'AutoscaleEvaluationsLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AutoscaleScaleActionsLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AutoscaleScaleActionsLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AutoscaleScaleActionsLog'
      displayName: 'AutoscaleScaleActionsLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AVNMConnectivityConfigurationChange 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AVNMConnectivityConfigurationChange'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AVNMConnectivityConfigurationChange'
      displayName: 'AVNMConnectivityConfigurationChange'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AVNMIPAMPoolAllocationChange 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AVNMIPAMPoolAllocationChange'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AVNMIPAMPoolAllocationChange'
      displayName: 'AVNMIPAMPoolAllocationChange'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AVNMNetworkGroupMembershipChange 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AVNMNetworkGroupMembershipChange'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AVNMNetworkGroupMembershipChange'
      displayName: 'AVNMNetworkGroupMembershipChange'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AVNMRuleCollectionChange 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AVNMRuleCollectionChange'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AVNMRuleCollectionChange'
      displayName: 'AVNMRuleCollectionChange'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AVSSyslog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AVSSyslog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AVSSyslog'
      displayName: 'AVSSyslog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWApplicationRule 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWApplicationRule'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWApplicationRule'
      displayName: 'AZFWApplicationRule'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWApplicationRuleAggregation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWApplicationRuleAggregation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWApplicationRuleAggregation'
      displayName: 'AZFWApplicationRuleAggregation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWDnsQuery 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWDnsQuery'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWDnsQuery'
      displayName: 'AZFWDnsQuery'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWFatFlow 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWFatFlow'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWFatFlow'
      displayName: 'AZFWFatFlow'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWFlowTrace 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWFlowTrace'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWFlowTrace'
      displayName: 'AZFWFlowTrace'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWIdpsSignature 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWIdpsSignature'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWIdpsSignature'
      displayName: 'AZFWIdpsSignature'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWInternalFqdnResolutionFailure 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWInternalFqdnResolutionFailure'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWInternalFqdnResolutionFailure'
      displayName: 'AZFWInternalFqdnResolutionFailure'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWNatRule 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWNatRule'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWNatRule'
      displayName: 'AZFWNatRule'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWNatRuleAggregation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWNatRuleAggregation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWNatRuleAggregation'
      displayName: 'AZFWNatRuleAggregation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWNetworkRule 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWNetworkRule'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWNetworkRule'
      displayName: 'AZFWNetworkRule'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWNetworkRuleAggregation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWNetworkRuleAggregation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWNetworkRuleAggregation'
      displayName: 'AZFWNetworkRuleAggregation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZFWThreatIntel 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZFWThreatIntel'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZFWThreatIntel'
      displayName: 'AZFWThreatIntel'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZKVAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZKVAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZKVAuditLogs'
      displayName: 'AZKVAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZKVPolicyEvaluationDetailsLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZKVPolicyEvaluationDetailsLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZKVPolicyEvaluationDetailsLogs'
      displayName: 'AZKVPolicyEvaluationDetailsLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZMSApplicationMetricLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZMSApplicationMetricLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZMSApplicationMetricLogs'
      displayName: 'AZMSApplicationMetricLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZMSArchiveLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZMSArchiveLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZMSArchiveLogs'
      displayName: 'AZMSArchiveLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZMSAutoscaleLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZMSAutoscaleLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZMSAutoscaleLogs'
      displayName: 'AZMSAutoscaleLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZMSCustomerManagedKeyUserLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZMSCustomerManagedKeyUserLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZMSCustomerManagedKeyUserLogs'
      displayName: 'AZMSCustomerManagedKeyUserLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZMSDiagnosticErrorLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZMSDiagnosticErrorLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZMSDiagnosticErrorLogs'
      displayName: 'AZMSDiagnosticErrorLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZMSHybridConnectionsEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZMSHybridConnectionsEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZMSHybridConnectionsEvents'
      displayName: 'AZMSHybridConnectionsEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZMSKafkaCoordinatorLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZMSKafkaCoordinatorLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZMSKafkaCoordinatorLogs'
      displayName: 'AZMSKafkaCoordinatorLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZMSKafkaUserErrorLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZMSKafkaUserErrorLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZMSKafkaUserErrorLogs'
      displayName: 'AZMSKafkaUserErrorLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZMSOperationalLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZMSOperationalLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZMSOperationalLogs'
      displayName: 'AZMSOperationalLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZMSRunTimeAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZMSRunTimeAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZMSRunTimeAuditLogs'
      displayName: 'AZMSRunTimeAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AZMSVnetConnectionEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AZMSVnetConnectionEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AZMSVnetConnectionEvents'
      displayName: 'AZMSVnetConnectionEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AzureActivity 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AzureActivity'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'AzureActivity'
      displayName: 'AzureActivity'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AzureActivityV2 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AzureActivityV2'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureActivityV2'
      displayName: 'AzureActivityV2'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AzureAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AzureAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureAssessmentRecommendation'
      displayName: 'AzureAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AzureAttestationDiagnostics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AzureAttestationDiagnostics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureAttestationDiagnostics'
      displayName: 'AzureAttestationDiagnostics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AzureBackupOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AzureBackupOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureBackupOperations'
      displayName: 'AzureBackupOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AzureDevOpsAuditing 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AzureDevOpsAuditing'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureDevOpsAuditing'
      displayName: 'AzureDevOpsAuditing'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AzureLoadTestingOperation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AzureLoadTestingOperation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureLoadTestingOperation'
      displayName: 'AzureLoadTestingOperation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AzureMetrics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AzureMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureMetrics'
      displayName: 'AzureMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_AzureMetricsV2 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'AzureMetricsV2'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'AzureMetricsV2'
      displayName: 'AzureMetricsV2'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_BehaviorEntities 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'BehaviorEntities'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'BehaviorEntities'
      displayName: 'BehaviorEntities'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_BehaviorInfo 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'BehaviorInfo'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'BehaviorInfo'
      displayName: 'BehaviorInfo'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_BlockchainApplicationLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'BlockchainApplicationLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'BlockchainApplicationLog'
      displayName: 'BlockchainApplicationLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_BlockchainProxyLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'BlockchainProxyLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'BlockchainProxyLog'
      displayName: 'BlockchainProxyLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CassandraAudit 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CassandraAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CassandraAudit'
      displayName: 'CassandraAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CassandraLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CassandraLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CassandraLogs'
      displayName: 'CassandraLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CCFApplicationLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CCFApplicationLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CCFApplicationLogs'
      displayName: 'CCFApplicationLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CDBCassandraRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CDBCassandraRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBCassandraRequests'
      displayName: 'CDBCassandraRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CDBControlPlaneRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CDBControlPlaneRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBControlPlaneRequests'
      displayName: 'CDBControlPlaneRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CDBDataPlaneRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CDBDataPlaneRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBDataPlaneRequests'
      displayName: 'CDBDataPlaneRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CDBGremlinRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CDBGremlinRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBGremlinRequests'
      displayName: 'CDBGremlinRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CDBMongoRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CDBMongoRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBMongoRequests'
      displayName: 'CDBMongoRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CDBPartitionKeyRUConsumption 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CDBPartitionKeyRUConsumption'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBPartitionKeyRUConsumption'
      displayName: 'CDBPartitionKeyRUConsumption'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CDBPartitionKeyStatistics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CDBPartitionKeyStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBPartitionKeyStatistics'
      displayName: 'CDBPartitionKeyStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CDBQueryRuntimeStatistics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CDBQueryRuntimeStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBQueryRuntimeStatistics'
      displayName: 'CDBQueryRuntimeStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CDBTableApiRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CDBTableApiRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CDBTableApiRequests'
      displayName: 'CDBTableApiRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ChaosStudioExperimentEventLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ChaosStudioExperimentEventLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ChaosStudioExperimentEventLogs'
      displayName: 'ChaosStudioExperimentEventLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CHSMServiceOperationAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CHSMServiceOperationAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CHSMServiceOperationAuditLogs'
      displayName: 'CHSMServiceOperationAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CIEventsAudit 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CIEventsAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CIEventsAudit'
      displayName: 'CIEventsAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CIEventsOperational 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CIEventsOperational'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CIEventsOperational'
      displayName: 'CIEventsOperational'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CloudHsmServiceOperationAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CloudHsmServiceOperationAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CloudHsmServiceOperationAuditLogs'
      displayName: 'CloudHsmServiceOperationAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ComputerGroup 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ComputerGroup'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ComputerGroup'
      displayName: 'ComputerGroup'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerAppConsoleLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerAppConsoleLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerAppConsoleLogs'
      displayName: 'ContainerAppConsoleLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerAppSystemLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerAppSystemLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerAppSystemLogs'
      displayName: 'ContainerAppSystemLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerEvent'
      displayName: 'ContainerEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerImageInventory 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerImageInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerImageInventory'
      displayName: 'ContainerImageInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerInstanceLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerInstanceLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerInstanceLog'
      displayName: 'ContainerInstanceLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerInventory 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerInventory'
      displayName: 'ContainerInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerLog'
      displayName: 'ContainerLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerLogV2 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerLogV2'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerLogV2'
      displayName: 'ContainerLogV2'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerNodeInventory 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerNodeInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerNodeInventory'
      displayName: 'ContainerNodeInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerRegistryLoginEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerRegistryLoginEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerRegistryLoginEvents'
      displayName: 'ContainerRegistryLoginEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerRegistryRepositoryEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerRegistryRepositoryEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerRegistryRepositoryEvents'
      displayName: 'ContainerRegistryRepositoryEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ContainerServiceLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ContainerServiceLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ContainerServiceLog'
      displayName: 'ContainerServiceLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_CoreAzureBackup 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'CoreAzureBackup'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'CoreAzureBackup'
      displayName: 'CoreAzureBackup'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksAccounts 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksAccounts'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksAccounts'
      displayName: 'DatabricksAccounts'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksApps 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksApps'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksApps'
      displayName: 'DatabricksApps'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksBrickStoreHttpGateway 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksBrickStoreHttpGateway'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksBrickStoreHttpGateway'
      displayName: 'DatabricksBrickStoreHttpGateway'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksBudgetPolicyCentral 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksBudgetPolicyCentral'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksBudgetPolicyCentral'
      displayName: 'DatabricksBudgetPolicyCentral'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksCapsule8Dataplane 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksCapsule8Dataplane'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksCapsule8Dataplane'
      displayName: 'DatabricksCapsule8Dataplane'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksClamAVScan 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksClamAVScan'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksClamAVScan'
      displayName: 'DatabricksClamAVScan'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksCloudStorageMetadata 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksCloudStorageMetadata'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksCloudStorageMetadata'
      displayName: 'DatabricksCloudStorageMetadata'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksClusterLibraries 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksClusterLibraries'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksClusterLibraries'
      displayName: 'DatabricksClusterLibraries'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksClusterPolicies 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksClusterPolicies'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksClusterPolicies'
      displayName: 'DatabricksClusterPolicies'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksClusters 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksClusters'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksClusters'
      displayName: 'DatabricksClusters'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksDashboards 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksDashboards'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksDashboards'
      displayName: 'DatabricksDashboards'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksDatabricksSQL 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksDatabricksSQL'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksDatabricksSQL'
      displayName: 'DatabricksDatabricksSQL'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksDataMonitoring 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksDataMonitoring'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksDataMonitoring'
      displayName: 'DatabricksDataMonitoring'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksDataRooms 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksDataRooms'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksDataRooms'
      displayName: 'DatabricksDataRooms'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksDBFS 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksDBFS'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksDBFS'
      displayName: 'DatabricksDBFS'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksDeltaPipelines 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksDeltaPipelines'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksDeltaPipelines'
      displayName: 'DatabricksDeltaPipelines'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksFeatureStore 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksFeatureStore'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksFeatureStore'
      displayName: 'DatabricksFeatureStore'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksFiles 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksFiles'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksFiles'
      displayName: 'DatabricksFiles'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksFilesystem 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksFilesystem'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksFilesystem'
      displayName: 'DatabricksFilesystem'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksGenie 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksGenie'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksGenie'
      displayName: 'DatabricksGenie'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksGitCredentials 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksGitCredentials'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksGitCredentials'
      displayName: 'DatabricksGitCredentials'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksGlobalInitScripts 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksGlobalInitScripts'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksGlobalInitScripts'
      displayName: 'DatabricksGlobalInitScripts'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksGroups 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksGroups'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksGroups'
      displayName: 'DatabricksGroups'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksIAMRole 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksIAMRole'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksIAMRole'
      displayName: 'DatabricksIAMRole'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksIngestion 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksIngestion'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksIngestion'
      displayName: 'DatabricksIngestion'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksInstancePools 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksInstancePools'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksInstancePools'
      displayName: 'DatabricksInstancePools'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksJobs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksJobs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksJobs'
      displayName: 'DatabricksJobs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksLakeviewConfig 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksLakeviewConfig'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksLakeviewConfig'
      displayName: 'DatabricksLakeviewConfig'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksLineageTracking 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksLineageTracking'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksLineageTracking'
      displayName: 'DatabricksLineageTracking'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksMarketplaceConsumer 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksMarketplaceConsumer'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksMarketplaceConsumer'
      displayName: 'DatabricksMarketplaceConsumer'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksMarketplaceProvider 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksMarketplaceProvider'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksMarketplaceProvider'
      displayName: 'DatabricksMarketplaceProvider'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksMLflowAcledArtifact 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksMLflowAcledArtifact'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksMLflowAcledArtifact'
      displayName: 'DatabricksMLflowAcledArtifact'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksMLflowExperiment 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksMLflowExperiment'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksMLflowExperiment'
      displayName: 'DatabricksMLflowExperiment'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksModelRegistry 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksModelRegistry'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksModelRegistry'
      displayName: 'DatabricksModelRegistry'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksNotebook 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksNotebook'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksNotebook'
      displayName: 'DatabricksNotebook'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksOnlineTables 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksOnlineTables'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksOnlineTables'
      displayName: 'DatabricksOnlineTables'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksPartnerHub 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksPartnerHub'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksPartnerHub'
      displayName: 'DatabricksPartnerHub'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksPredictiveOptimization 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksPredictiveOptimization'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksPredictiveOptimization'
      displayName: 'DatabricksPredictiveOptimization'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksRBAC 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksRBAC'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksRBAC'
      displayName: 'DatabricksRBAC'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksRemoteHistoryService 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksRemoteHistoryService'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksRemoteHistoryService'
      displayName: 'DatabricksRemoteHistoryService'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksRepos 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksRepos'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksRepos'
      displayName: 'DatabricksRepos'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksRFA 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksRFA'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksRFA'
      displayName: 'DatabricksRFA'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksSecrets 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksSecrets'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksSecrets'
      displayName: 'DatabricksSecrets'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksServerlessRealTimeInference 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksServerlessRealTimeInference'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksServerlessRealTimeInference'
      displayName: 'DatabricksServerlessRealTimeInference'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksSQL 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksSQL'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksSQL'
      displayName: 'DatabricksSQL'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksSQLPermissions 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksSQLPermissions'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksSQLPermissions'
      displayName: 'DatabricksSQLPermissions'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksSSH 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksSSH'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksSSH'
      displayName: 'DatabricksSSH'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksTables 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksTables'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksTables'
      displayName: 'DatabricksTables'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksUnityCatalog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksUnityCatalog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksUnityCatalog'
      displayName: 'DatabricksUnityCatalog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksVectorSearch 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksVectorSearch'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksVectorSearch'
      displayName: 'DatabricksVectorSearch'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksWebhookNotifications 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksWebhookNotifications'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksWebhookNotifications'
      displayName: 'DatabricksWebhookNotifications'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksWebTerminal 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksWebTerminal'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksWebTerminal'
      displayName: 'DatabricksWebTerminal'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksWorkspace 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksWorkspace'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksWorkspace'
      displayName: 'DatabricksWorkspace'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DatabricksWorkspaceFiles 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DatabricksWorkspaceFiles'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DatabricksWorkspaceFiles'
      displayName: 'DatabricksWorkspaceFiles'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DataTransferOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DataTransferOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DataTransferOperations'
      displayName: 'DataTransferOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DCRLogErrors 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DCRLogErrors'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DCRLogErrors'
      displayName: 'DCRLogErrors'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DCRLogTroubleshooting 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DCRLogTroubleshooting'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DCRLogTroubleshooting'
      displayName: 'DCRLogTroubleshooting'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DevCenterBillingEventLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DevCenterBillingEventLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DevCenterBillingEventLogs'
      displayName: 'DevCenterBillingEventLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DevCenterDiagnosticLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DevCenterDiagnosticLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DevCenterDiagnosticLogs'
      displayName: 'DevCenterDiagnosticLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DevCenterResourceOperationLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DevCenterResourceOperationLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DevCenterResourceOperationLogs'
      displayName: 'DevCenterResourceOperationLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DeviceBehaviorEntities 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DeviceBehaviorEntities'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceBehaviorEntities'
      displayName: 'DeviceBehaviorEntities'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DeviceBehaviorInfo 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DeviceBehaviorInfo'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DeviceBehaviorInfo'
      displayName: 'DeviceBehaviorInfo'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DNSQueryLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DNSQueryLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DNSQueryLogs'
      displayName: 'DNSQueryLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DSMAzureBlobStorageLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DSMAzureBlobStorageLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DSMAzureBlobStorageLogs'
      displayName: 'DSMAzureBlobStorageLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DSMDataClassificationLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DSMDataClassificationLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DSMDataClassificationLogs'
      displayName: 'DSMDataClassificationLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_DSMDataLabelingLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'DSMDataLabelingLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'DSMDataLabelingLogs'
      displayName: 'DSMDataLabelingLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_EGNFailedHttpDataPlaneOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'EGNFailedHttpDataPlaneOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EGNFailedHttpDataPlaneOperations'
      displayName: 'EGNFailedHttpDataPlaneOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_EGNFailedMqttConnections 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'EGNFailedMqttConnections'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EGNFailedMqttConnections'
      displayName: 'EGNFailedMqttConnections'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_EGNFailedMqttPublishedMessages 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'EGNFailedMqttPublishedMessages'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EGNFailedMqttPublishedMessages'
      displayName: 'EGNFailedMqttPublishedMessages'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_EGNFailedMqttSubscriptions 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'EGNFailedMqttSubscriptions'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EGNFailedMqttSubscriptions'
      displayName: 'EGNFailedMqttSubscriptions'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_EGNMqttDisconnections 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'EGNMqttDisconnections'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EGNMqttDisconnections'
      displayName: 'EGNMqttDisconnections'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_EGNSuccessfulHttpDataPlaneOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'EGNSuccessfulHttpDataPlaneOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EGNSuccessfulHttpDataPlaneOperations'
      displayName: 'EGNSuccessfulHttpDataPlaneOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_EGNSuccessfulMqttConnections 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'EGNSuccessfulMqttConnections'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EGNSuccessfulMqttConnections'
      displayName: 'EGNSuccessfulMqttConnections'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_EnrichedMicrosoft365AuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'EnrichedMicrosoft365AuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'EnrichedMicrosoft365AuditLogs'
      displayName: 'EnrichedMicrosoft365AuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ETWEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ETWEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ETWEvent'
      displayName: 'ETWEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_Event 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'Event'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Event'
      displayName: 'Event'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ExchangeAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ExchangeAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ExchangeAssessmentRecommendation'
      displayName: 'ExchangeAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ExchangeOnlineAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ExchangeOnlineAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ExchangeOnlineAssessmentRecommendation'
      displayName: 'ExchangeOnlineAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_FailedIngestion 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'FailedIngestion'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'FailedIngestion'
      displayName: 'FailedIngestion'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_FunctionAppLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'FunctionAppLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'FunctionAppLogs'
      displayName: 'FunctionAppLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightAmbariClusterAlerts 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightAmbariClusterAlerts'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightAmbariClusterAlerts'
      displayName: 'HDInsightAmbariClusterAlerts'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightAmbariSystemMetrics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightAmbariSystemMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightAmbariSystemMetrics'
      displayName: 'HDInsightAmbariSystemMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightGatewayAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightGatewayAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightGatewayAuditLogs'
      displayName: 'HDInsightGatewayAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightHadoopAndYarnLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightHadoopAndYarnLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHadoopAndYarnLogs'
      displayName: 'HDInsightHadoopAndYarnLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightHadoopAndYarnMetrics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightHadoopAndYarnMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHadoopAndYarnMetrics'
      displayName: 'HDInsightHadoopAndYarnMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightHBaseLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightHBaseLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHBaseLogs'
      displayName: 'HDInsightHBaseLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightHBaseMetrics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightHBaseMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHBaseMetrics'
      displayName: 'HDInsightHBaseMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightHiveAndLLAPLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightHiveAndLLAPLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHiveAndLLAPLogs'
      displayName: 'HDInsightHiveAndLLAPLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightHiveAndLLAPMetrics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightHiveAndLLAPMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHiveAndLLAPMetrics'
      displayName: 'HDInsightHiveAndLLAPMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightHiveQueryAppStats 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightHiveQueryAppStats'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHiveQueryAppStats'
      displayName: 'HDInsightHiveQueryAppStats'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightHiveTezAppStats 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightHiveTezAppStats'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightHiveTezAppStats'
      displayName: 'HDInsightHiveTezAppStats'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightJupyterNotebookEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightJupyterNotebookEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightJupyterNotebookEvents'
      displayName: 'HDInsightJupyterNotebookEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightKafkaLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightKafkaLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightKafkaLogs'
      displayName: 'HDInsightKafkaLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightKafkaMetrics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightKafkaMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightKafkaMetrics'
      displayName: 'HDInsightKafkaMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightKafkaServerLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightKafkaServerLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightKafkaServerLog'
      displayName: 'HDInsightKafkaServerLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightOozieLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightOozieLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightOozieLogs'
      displayName: 'HDInsightOozieLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightRangerAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightRangerAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightRangerAuditLogs'
      displayName: 'HDInsightRangerAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSecurityLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSecurityLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSecurityLogs'
      displayName: 'HDInsightSecurityLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSparkApplicationEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSparkApplicationEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkApplicationEvents'
      displayName: 'HDInsightSparkApplicationEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSparkBlockManagerEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSparkBlockManagerEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkBlockManagerEvents'
      displayName: 'HDInsightSparkBlockManagerEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSparkEnvironmentEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSparkEnvironmentEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkEnvironmentEvents'
      displayName: 'HDInsightSparkEnvironmentEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSparkExecutorEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSparkExecutorEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkExecutorEvents'
      displayName: 'HDInsightSparkExecutorEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSparkExtraEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSparkExtraEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkExtraEvents'
      displayName: 'HDInsightSparkExtraEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSparkJobEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSparkJobEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkJobEvents'
      displayName: 'HDInsightSparkJobEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSparkLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSparkLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkLogs'
      displayName: 'HDInsightSparkLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSparkSQLExecutionEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSparkSQLExecutionEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkSQLExecutionEvents'
      displayName: 'HDInsightSparkSQLExecutionEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSparkStageEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSparkStageEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkStageEvents'
      displayName: 'HDInsightSparkStageEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSparkStageTaskAccumulables 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSparkStageTaskAccumulables'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkStageTaskAccumulables'
      displayName: 'HDInsightSparkStageTaskAccumulables'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightSparkTaskEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightSparkTaskEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightSparkTaskEvents'
      displayName: 'HDInsightSparkTaskEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightStormLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightStormLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightStormLogs'
      displayName: 'HDInsightStormLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightStormMetrics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightStormMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightStormMetrics'
      displayName: 'HDInsightStormMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HDInsightStormTopologyMetrics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HDInsightStormTopologyMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HDInsightStormTopologyMetrics'
      displayName: 'HDInsightStormTopologyMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_HealthStateChangeEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'HealthStateChangeEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'HealthStateChangeEvent'
      displayName: 'HealthStateChangeEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_Heartbeat 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'Heartbeat'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Heartbeat'
      displayName: 'Heartbeat'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_InsightsMetrics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'InsightsMetrics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'InsightsMetrics'
      displayName: 'InsightsMetrics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_IntuneAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'IntuneAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'IntuneAuditLogs'
      displayName: 'IntuneAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_IntuneDeviceComplianceOrg 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'IntuneDeviceComplianceOrg'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'IntuneDeviceComplianceOrg'
      displayName: 'IntuneDeviceComplianceOrg'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_IntuneDevices 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'IntuneDevices'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'IntuneDevices'
      displayName: 'IntuneDevices'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_IntuneOperationalLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'IntuneOperationalLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'IntuneOperationalLogs'
      displayName: 'IntuneOperationalLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_KubeEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'KubeEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubeEvents'
      displayName: 'KubeEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_KubeHealth 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'KubeHealth'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubeHealth'
      displayName: 'KubeHealth'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_KubeMonAgentEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'KubeMonAgentEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubeMonAgentEvents'
      displayName: 'KubeMonAgentEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_KubeNodeInventory 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'KubeNodeInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubeNodeInventory'
      displayName: 'KubeNodeInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_KubePodInventory 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'KubePodInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubePodInventory'
      displayName: 'KubePodInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_KubePVInventory 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'KubePVInventory'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubePVInventory'
      displayName: 'KubePVInventory'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_KubeServices 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'KubeServices'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'KubeServices'
      displayName: 'KubeServices'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LAQueryLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LAQueryLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'LAQueryLogs'
      displayName: 'LAQueryLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LASummaryLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LASummaryLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'LASummaryLogs'
      displayName: 'LASummaryLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_LogicAppWorkflowRuntime 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'LogicAppWorkflowRuntime'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'LogicAppWorkflowRuntime'
      displayName: 'LogicAppWorkflowRuntime'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MCCEventLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MCCEventLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MCCEventLogs'
      displayName: 'MCCEventLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MCVPAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MCVPAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MCVPAuditLogs'
      displayName: 'MCVPAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MCVPOperationLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MCVPOperationLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MCVPOperationLogs'
      displayName: 'MCVPOperationLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MDCDetectionDNSEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MDCDetectionDNSEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MDCDetectionDNSEvents'
      displayName: 'MDCDetectionDNSEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MDCDetectionFimEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MDCDetectionFimEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MDCDetectionFimEvents'
      displayName: 'MDCDetectionFimEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MDCDetectionGatingValidationEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MDCDetectionGatingValidationEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MDCDetectionGatingValidationEvents'
      displayName: 'MDCDetectionGatingValidationEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MDCFileIntegrityMonitoringEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MDCFileIntegrityMonitoringEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MDCFileIntegrityMonitoringEvents'
      displayName: 'MDCFileIntegrityMonitoringEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MDECustomCollectionDeviceFileEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MDECustomCollectionDeviceFileEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MDECustomCollectionDeviceFileEvents'
      displayName: 'MDECustomCollectionDeviceFileEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MicrosoftAzureBastionAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MicrosoftAzureBastionAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftAzureBastionAuditLogs'
      displayName: 'MicrosoftAzureBastionAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MicrosoftDataShareReceivedSnapshotLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MicrosoftDataShareReceivedSnapshotLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftDataShareReceivedSnapshotLog'
      displayName: 'MicrosoftDataShareReceivedSnapshotLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MicrosoftDataShareSentSnapshotLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MicrosoftDataShareSentSnapshotLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftDataShareSentSnapshotLog'
      displayName: 'MicrosoftDataShareSentSnapshotLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MicrosoftDataShareShareLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MicrosoftDataShareShareLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftDataShareShareLog'
      displayName: 'MicrosoftDataShareShareLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MicrosoftDynamicsTelemetryPerformanceLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MicrosoftDynamicsTelemetryPerformanceLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftDynamicsTelemetryPerformanceLogs'
      displayName: 'MicrosoftDynamicsTelemetryPerformanceLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MicrosoftDynamicsTelemetrySystemMetricsLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MicrosoftDynamicsTelemetrySystemMetricsLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftDynamicsTelemetrySystemMetricsLogs'
      displayName: 'MicrosoftDynamicsTelemetrySystemMetricsLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MicrosoftGraphActivityLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MicrosoftGraphActivityLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftGraphActivityLogs'
      displayName: 'MicrosoftGraphActivityLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MicrosoftHealthcareApisAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MicrosoftHealthcareApisAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MicrosoftHealthcareApisAuditLogs'
      displayName: 'MicrosoftHealthcareApisAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MNFDeviceUpdates 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MNFDeviceUpdates'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MNFDeviceUpdates'
      displayName: 'MNFDeviceUpdates'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MNFSystemSessionHistoryUpdates 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MNFSystemSessionHistoryUpdates'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MNFSystemSessionHistoryUpdates'
      displayName: 'MNFSystemSessionHistoryUpdates'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_MNFSystemStateMessageUpdates 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'MNFSystemStateMessageUpdates'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'MNFSystemStateMessageUpdates'
      displayName: 'MNFSystemStateMessageUpdates'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NatGatewayFlowlogsV1 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NatGatewayFlowlogsV1'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NatGatewayFlowlogsV1'
      displayName: 'NatGatewayFlowlogsV1'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NCBMBreakGlassAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NCBMBreakGlassAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NCBMBreakGlassAuditLogs'
      displayName: 'NCBMBreakGlassAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NCBMSecurityDefenderLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NCBMSecurityDefenderLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NCBMSecurityDefenderLogs'
      displayName: 'NCBMSecurityDefenderLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NCBMSecurityLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NCBMSecurityLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NCBMSecurityLogs'
      displayName: 'NCBMSecurityLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NCBMSystemLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NCBMSystemLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NCBMSystemLogs'
      displayName: 'NCBMSystemLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NCCKubernetesLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NCCKubernetesLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NCCKubernetesLogs'
      displayName: 'NCCKubernetesLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NCCPlatformOperationsLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NCCPlatformOperationsLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NCCPlatformOperationsLogs'
      displayName: 'NCCPlatformOperationsLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NCCVMOrchestrationLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NCCVMOrchestrationLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NCCVMOrchestrationLogs'
      displayName: 'NCCVMOrchestrationLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NCMClusterOperationsLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NCMClusterOperationsLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NCMClusterOperationsLogs'
      displayName: 'NCMClusterOperationsLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NCSStorageAlerts 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NCSStorageAlerts'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NCSStorageAlerts'
      displayName: 'NCSStorageAlerts'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NCSStorageAudits 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NCSStorageAudits'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NCSStorageAudits'
      displayName: 'NCSStorageAudits'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NCSStorageLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NCSStorageLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NCSStorageLogs'
      displayName: 'NCSStorageLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NetworkAccessAlerts 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NetworkAccessAlerts'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NetworkAccessAlerts'
      displayName: 'NetworkAccessAlerts'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NetworkAccessConnectionEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NetworkAccessConnectionEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NetworkAccessConnectionEvents'
      displayName: 'NetworkAccessConnectionEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NetworkAccessTraffic 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NetworkAccessTraffic'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NetworkAccessTraffic'
      displayName: 'NetworkAccessTraffic'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NginxUpstreamUpdateLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NginxUpstreamUpdateLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NginxUpstreamUpdateLogs'
      displayName: 'NginxUpstreamUpdateLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NGXOperationLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NGXOperationLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NGXOperationLogs'
      displayName: 'NGXOperationLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NGXSecurityLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NGXSecurityLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NGXSecurityLogs'
      displayName: 'NGXSecurityLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NSPAccessLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NSPAccessLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NSPAccessLogs'
      displayName: 'NSPAccessLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NTAInsights 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NTAInsights'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NTAInsights'
      displayName: 'NTAInsights'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NTAIpDetails 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NTAIpDetails'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NTAIpDetails'
      displayName: 'NTAIpDetails'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NTANetAnalytics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NTANetAnalytics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NTANetAnalytics'
      displayName: 'NTANetAnalytics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NTATopologyDetails 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NTATopologyDetails'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NTATopologyDetails'
      displayName: 'NTATopologyDetails'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NWConnectionMonitorDestinationListenerResult 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NWConnectionMonitorDestinationListenerResult'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NWConnectionMonitorDestinationListenerResult'
      displayName: 'NWConnectionMonitorDestinationListenerResult'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NWConnectionMonitorDNSResult 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NWConnectionMonitorDNSResult'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NWConnectionMonitorDNSResult'
      displayName: 'NWConnectionMonitorDNSResult'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NWConnectionMonitorPathResult 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NWConnectionMonitorPathResult'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NWConnectionMonitorPathResult'
      displayName: 'NWConnectionMonitorPathResult'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_NWConnectionMonitorTestResult 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'NWConnectionMonitorTestResult'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'NWConnectionMonitorTestResult'
      displayName: 'NWConnectionMonitorTestResult'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_OEPAirFlowTask 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'OEPAirFlowTask'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OEPAirFlowTask'
      displayName: 'OEPAirFlowTask'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_OEPAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'OEPAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OEPAuditLogs'
      displayName: 'OEPAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_OEPDataplaneLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'OEPDataplaneLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OEPDataplaneLogs'
      displayName: 'OEPDataplaneLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_OEPElasticOperator 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'OEPElasticOperator'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OEPElasticOperator'
      displayName: 'OEPElasticOperator'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_OEPElasticsearch 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'OEPElasticsearch'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OEPElasticsearch'
      displayName: 'OEPElasticsearch'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_OEWExperimentAssignmentSummary 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'OEWExperimentAssignmentSummary'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OEWExperimentAssignmentSummary'
      displayName: 'OEWExperimentAssignmentSummary'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_OEWExperimentScorecardMetricPairs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'OEWExperimentScorecardMetricPairs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OEWExperimentScorecardMetricPairs'
      displayName: 'OEWExperimentScorecardMetricPairs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_OEWExperimentScorecards 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'OEWExperimentScorecards'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OEWExperimentScorecards'
      displayName: 'OEWExperimentScorecards'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_OLPSupplyChainEntityOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'OLPSupplyChainEntityOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OLPSupplyChainEntityOperations'
      displayName: 'OLPSupplyChainEntityOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_OLPSupplyChainEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'OLPSupplyChainEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OLPSupplyChainEvents'
      displayName: 'OLPSupplyChainEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_OmsCustomerProfileFact 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'OmsCustomerProfileFact'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'OmsCustomerProfileFact'
      displayName: 'OmsCustomerProfileFact'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_Operation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'Operation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Operation'
      displayName: 'Operation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_Perf 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'Perf'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Perf'
      displayName: 'Perf'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_PFTitleAuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'PFTitleAuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PFTitleAuditLogs'
      displayName: 'PFTitleAuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_PowerBIAuditTenant 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'PowerBIAuditTenant'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIAuditTenant'
      displayName: 'PowerBIAuditTenant'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_PowerBIDatasetsTenant 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'PowerBIDatasetsTenant'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIDatasetsTenant'
      displayName: 'PowerBIDatasetsTenant'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_PowerBIDatasetsTenantPreview 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'PowerBIDatasetsTenantPreview'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIDatasetsTenantPreview'
      displayName: 'PowerBIDatasetsTenantPreview'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_PowerBIDatasetsWorkspace 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'PowerBIDatasetsWorkspace'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIDatasetsWorkspace'
      displayName: 'PowerBIDatasetsWorkspace'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_PowerBIDatasetsWorkspacePreview 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'PowerBIDatasetsWorkspacePreview'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIDatasetsWorkspacePreview'
      displayName: 'PowerBIDatasetsWorkspacePreview'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_PowerBIReportUsageTenant 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'PowerBIReportUsageTenant'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIReportUsageTenant'
      displayName: 'PowerBIReportUsageTenant'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_PowerBIReportUsageWorkspace 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'PowerBIReportUsageWorkspace'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PowerBIReportUsageWorkspace'
      displayName: 'PowerBIReportUsageWorkspace'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_PurviewDataSensitivityLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'PurviewDataSensitivityLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PurviewDataSensitivityLogs'
      displayName: 'PurviewDataSensitivityLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_PurviewScanStatusLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'PurviewScanStatusLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PurviewScanStatusLogs'
      displayName: 'PurviewScanStatusLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_PurviewSecurityLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'PurviewSecurityLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'PurviewSecurityLogs'
      displayName: 'PurviewSecurityLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_REDConnectionEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'REDConnectionEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'REDConnectionEvents'
      displayName: 'REDConnectionEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_RemoteNetworkHealthLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'RemoteNetworkHealthLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'RemoteNetworkHealthLogs'
      displayName: 'RemoteNetworkHealthLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ReservedCommonFields 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ReservedCommonFields'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ReservedCommonFields'
      displayName: 'ReservedCommonFields'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ResourceManagementPublicAccessLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ResourceManagementPublicAccessLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ResourceManagementPublicAccessLogs'
      displayName: 'ResourceManagementPublicAccessLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_RetinaNetworkFlowLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'RetinaNetworkFlowLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'RetinaNetworkFlowLogs'
      displayName: 'RetinaNetworkFlowLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SCCMAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SCCMAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SCCMAssessmentRecommendation'
      displayName: 'SCCMAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SCGPoolExecutionLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SCGPoolExecutionLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SCGPoolExecutionLog'
      displayName: 'SCGPoolExecutionLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SCGPoolRequestLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SCGPoolRequestLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SCGPoolRequestLog'
      displayName: 'SCGPoolRequestLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SCOMAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SCOMAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SCOMAssessmentRecommendation'
      displayName: 'SCOMAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ServiceFabricOperationalEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ServiceFabricOperationalEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ServiceFabricOperationalEvent'
      displayName: 'ServiceFabricOperationalEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ServiceFabricReliableActorEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ServiceFabricReliableActorEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ServiceFabricReliableActorEvent'
      displayName: 'ServiceFabricReliableActorEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_ServiceFabricReliableServiceEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'ServiceFabricReliableServiceEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'ServiceFabricReliableServiceEvent'
      displayName: 'ServiceFabricReliableServiceEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SfBAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SfBAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SfBAssessmentRecommendation'
      displayName: 'SfBAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SfBOnlineAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SfBOnlineAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SfBOnlineAssessmentRecommendation'
      displayName: 'SfBOnlineAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SharePointOnlineAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SharePointOnlineAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SharePointOnlineAssessmentRecommendation'
      displayName: 'SharePointOnlineAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SignalRServiceDiagnosticLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SignalRServiceDiagnosticLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SignalRServiceDiagnosticLogs'
      displayName: 'SignalRServiceDiagnosticLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SigninLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SigninLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SigninLogs'
      displayName: 'SigninLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SPAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SPAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SPAssessmentRecommendation'
      displayName: 'SPAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SQLAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SQLAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SQLAssessmentRecommendation'
      displayName: 'SQLAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SQLSecurityAuditEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SQLSecurityAuditEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SQLSecurityAuditEvents'
      displayName: 'SQLSecurityAuditEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageAntimalwareScanResults 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageAntimalwareScanResults'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageAntimalwareScanResults'
      displayName: 'StorageAntimalwareScanResults'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageBlobLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageBlobLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageBlobLogs'
      displayName: 'StorageBlobLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageCacheOperationEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageCacheOperationEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageCacheOperationEvents'
      displayName: 'StorageCacheOperationEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageCacheUpgradeEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageCacheUpgradeEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageCacheUpgradeEvents'
      displayName: 'StorageCacheUpgradeEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageCacheWarningEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageCacheWarningEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageCacheWarningEvents'
      displayName: 'StorageCacheWarningEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageFileLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageFileLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageFileLogs'
      displayName: 'StorageFileLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageMalwareScanningResults 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageMalwareScanningResults'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageMalwareScanningResults'
      displayName: 'StorageMalwareScanningResults'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageMoverCopyLogsFailed 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageMoverCopyLogsFailed'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageMoverCopyLogsFailed'
      displayName: 'StorageMoverCopyLogsFailed'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageMoverCopyLogsTransferred 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageMoverCopyLogsTransferred'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageMoverCopyLogsTransferred'
      displayName: 'StorageMoverCopyLogsTransferred'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageMoverJobRunLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageMoverJobRunLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageMoverJobRunLogs'
      displayName: 'StorageMoverJobRunLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageQueueLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageQueueLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageQueueLogs'
      displayName: 'StorageQueueLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_StorageTableLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'StorageTableLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'StorageTableLogs'
      displayName: 'StorageTableLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SucceededIngestion 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SucceededIngestion'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SucceededIngestion'
      displayName: 'SucceededIngestion'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SVMPoolExecutionLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SVMPoolExecutionLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SVMPoolExecutionLog'
      displayName: 'SVMPoolExecutionLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SVMPoolRequestLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SVMPoolRequestLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SVMPoolRequestLog'
      displayName: 'SVMPoolRequestLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseBigDataPoolApplicationsEnded 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseBigDataPoolApplicationsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseBigDataPoolApplicationsEnded'
      displayName: 'SynapseBigDataPoolApplicationsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseBuiltinSqlPoolRequestsEnded 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseBuiltinSqlPoolRequestsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseBuiltinSqlPoolRequestsEnded'
      displayName: 'SynapseBuiltinSqlPoolRequestsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseDXCommand 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseDXCommand'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXCommand'
      displayName: 'SynapseDXCommand'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseDXFailedIngestion 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseDXFailedIngestion'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXFailedIngestion'
      displayName: 'SynapseDXFailedIngestion'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseDXIngestionBatching 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseDXIngestionBatching'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXIngestionBatching'
      displayName: 'SynapseDXIngestionBatching'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseDXQuery 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseDXQuery'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXQuery'
      displayName: 'SynapseDXQuery'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseDXSucceededIngestion 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseDXSucceededIngestion'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXSucceededIngestion'
      displayName: 'SynapseDXSucceededIngestion'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseDXTableDetails 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseDXTableDetails'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXTableDetails'
      displayName: 'SynapseDXTableDetails'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseDXTableUsageStatistics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseDXTableUsageStatistics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseDXTableUsageStatistics'
      displayName: 'SynapseDXTableUsageStatistics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseGatewayApiRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseGatewayApiRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseGatewayApiRequests'
      displayName: 'SynapseGatewayApiRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseGatewayEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseGatewayEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseGatewayEvents'
      displayName: 'SynapseGatewayEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseIntegrationActivityRuns 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseIntegrationActivityRuns'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationActivityRuns'
      displayName: 'SynapseIntegrationActivityRuns'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseIntegrationActivityRunsEnded 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseIntegrationActivityRunsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationActivityRunsEnded'
      displayName: 'SynapseIntegrationActivityRunsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseIntegrationPipelineRuns 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseIntegrationPipelineRuns'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationPipelineRuns'
      displayName: 'SynapseIntegrationPipelineRuns'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseIntegrationPipelineRunsEnded 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseIntegrationPipelineRunsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationPipelineRunsEnded'
      displayName: 'SynapseIntegrationPipelineRunsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseIntegrationTriggerRuns 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseIntegrationTriggerRuns'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationTriggerRuns'
      displayName: 'SynapseIntegrationTriggerRuns'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseIntegrationTriggerRunsEnded 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseIntegrationTriggerRunsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseIntegrationTriggerRunsEnded'
      displayName: 'SynapseIntegrationTriggerRunsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseLinkEvent 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseLinkEvent'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseLinkEvent'
      displayName: 'SynapseLinkEvent'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseRBACEvents 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseRBACEvents'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseRBACEvents'
      displayName: 'SynapseRBACEvents'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseRbacOperations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseRbacOperations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseRbacOperations'
      displayName: 'SynapseRbacOperations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseScopePoolScopeJobsEnded 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseScopePoolScopeJobsEnded'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseScopePoolScopeJobsEnded'
      displayName: 'SynapseScopePoolScopeJobsEnded'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseScopePoolScopeJobsStateChange 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseScopePoolScopeJobsStateChange'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseScopePoolScopeJobsStateChange'
      displayName: 'SynapseScopePoolScopeJobsStateChange'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseSqlPoolDmsWorkers 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseSqlPoolDmsWorkers'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseSqlPoolDmsWorkers'
      displayName: 'SynapseSqlPoolDmsWorkers'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseSqlPoolExecRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseSqlPoolExecRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseSqlPoolExecRequests'
      displayName: 'SynapseSqlPoolExecRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseSqlPoolRequestSteps 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseSqlPoolRequestSteps'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseSqlPoolRequestSteps'
      displayName: 'SynapseSqlPoolRequestSteps'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseSqlPoolSqlRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseSqlPoolSqlRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseSqlPoolSqlRequests'
      displayName: 'SynapseSqlPoolSqlRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_SynapseSqlPoolWaits 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'SynapseSqlPoolWaits'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'SynapseSqlPoolWaits'
      displayName: 'SynapseSqlPoolWaits'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_Syslog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'Syslog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Syslog'
      displayName: 'Syslog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_TOUserAudits 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'TOUserAudits'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'TOUserAudits'
      displayName: 'TOUserAudits'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_TOUserDiagnostics 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'TOUserDiagnostics'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'TOUserDiagnostics'
      displayName: 'TOUserDiagnostics'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_TSIIngress 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'TSIIngress'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'TSIIngress'
      displayName: 'TSIIngress'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_UCClient 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'UCClient'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'UCClient'
      displayName: 'UCClient'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_UCClientReadinessStatus 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'UCClientReadinessStatus'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'UCClientReadinessStatus'
      displayName: 'UCClientReadinessStatus'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_UCClientUpdateStatus 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'UCClientUpdateStatus'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'UCClientUpdateStatus'
      displayName: 'UCClientUpdateStatus'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_UCDeviceAlert 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'UCDeviceAlert'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'UCDeviceAlert'
      displayName: 'UCDeviceAlert'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_UCDOAggregatedStatus 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'UCDOAggregatedStatus'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'UCDOAggregatedStatus'
      displayName: 'UCDOAggregatedStatus'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_UCDOStatus 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'UCDOStatus'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'UCDOStatus'
      displayName: 'UCDOStatus'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_UCServiceUpdateStatus 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'UCServiceUpdateStatus'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'UCServiceUpdateStatus'
      displayName: 'UCServiceUpdateStatus'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_UCUpdateAlert 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'UCUpdateAlert'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'UCUpdateAlert'
      displayName: 'UCUpdateAlert'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_Usage 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'Usage'
  properties: {
    totalRetentionInDays: 90
    plan: 'Analytics'
    schema: {
      name: 'Usage'
      displayName: 'Usage'
    }
    retentionInDays: 90
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_VCoreMongoRequests 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'VCoreMongoRequests'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VCoreMongoRequests'
      displayName: 'VCoreMongoRequests'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_VIAudit 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'VIAudit'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VIAudit'
      displayName: 'VIAudit'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_VIIndexing 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'VIIndexing'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VIIndexing'
      displayName: 'VIIndexing'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_VMBoundPort 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'VMBoundPort'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VMBoundPort'
      displayName: 'VMBoundPort'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_VMComputer 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'VMComputer'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VMComputer'
      displayName: 'VMComputer'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_VMConnection 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'VMConnection'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VMConnection'
      displayName: 'VMConnection'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_VMProcess 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'VMProcess'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'VMProcess'
      displayName: 'VMProcess'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_W3CIISLog 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'W3CIISLog'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'W3CIISLog'
      displayName: 'W3CIISLog'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WebPubSubConnectivity 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WebPubSubConnectivity'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WebPubSubConnectivity'
      displayName: 'WebPubSubConnectivity'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WebPubSubHttpRequest 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WebPubSubHttpRequest'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WebPubSubHttpRequest'
      displayName: 'WebPubSubHttpRequest'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WebPubSubMessaging 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WebPubSubMessaging'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WebPubSubMessaging'
      displayName: 'WebPubSubMessaging'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_Windows365AuditLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'Windows365AuditLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'Windows365AuditLogs'
      displayName: 'Windows365AuditLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WindowsClientAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WindowsClientAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WindowsClientAssessmentRecommendation'
      displayName: 'WindowsClientAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WindowsServerAssessmentRecommendation 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WindowsServerAssessmentRecommendation'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WindowsServerAssessmentRecommendation'
      displayName: 'WindowsServerAssessmentRecommendation'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WorkloadDiagnosticLogs 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WorkloadDiagnosticLogs'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WorkloadDiagnosticLogs'
      displayName: 'WorkloadDiagnosticLogs'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WVDAgentHealthStatus 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WVDAgentHealthStatus'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDAgentHealthStatus'
      displayName: 'WVDAgentHealthStatus'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WVDAutoscaleEvaluationPooled 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WVDAutoscaleEvaluationPooled'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDAutoscaleEvaluationPooled'
      displayName: 'WVDAutoscaleEvaluationPooled'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WVDCheckpoints 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WVDCheckpoints'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDCheckpoints'
      displayName: 'WVDCheckpoints'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WVDConnectionGraphicsDataPreview 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WVDConnectionGraphicsDataPreview'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDConnectionGraphicsDataPreview'
      displayName: 'WVDConnectionGraphicsDataPreview'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WVDConnectionNetworkData 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WVDConnectionNetworkData'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDConnectionNetworkData'
      displayName: 'WVDConnectionNetworkData'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WVDConnections 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WVDConnections'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDConnections'
      displayName: 'WVDConnections'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WVDErrors 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WVDErrors'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDErrors'
      displayName: 'WVDErrors'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WVDFeeds 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WVDFeeds'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDFeeds'
      displayName: 'WVDFeeds'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WVDHostRegistrations 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WVDHostRegistrations'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDHostRegistrations'
      displayName: 'WVDHostRegistrations'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WVDManagement 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WVDManagement'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDManagement'
      displayName: 'WVDManagement'
    }
    retentionInDays: 30
  }
}

resource workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_WVDSessionHostManagement 'Microsoft.OperationalInsights/workspaces/tables@2023-09-01' = {
  parent: workspaces_692afa0b_fb94_4544_9077_75f21578b5eb_atlas_uat_WUS2_name_resource
  name: 'WVDSessionHostManagement'
  properties: {
    totalRetentionInDays: 30
    plan: 'Analytics'
    schema: {
      name: 'WVDSessionHostManagement'
      displayName: 'WVDSessionHostManagement'
    }
    retentionInDays: 30
  }
}

resource storageAccounts_atlasimageuat_name_resource 'Microsoft.Storage/storageAccounts@2024-01-01' = {
  name: storageAccounts_atlasimageuat_name
  location: 'westus2'
  sku: {
    name: 'Standard_RAGRS'
    tier: 'Standard'
  }
  kind: 'StorageV2'
  properties: {
    dnsEndpointType: 'Standard'
    defaultToOAuthAuthentication: false
    publicNetworkAccess: 'Enabled'
    allowCrossTenantReplication: false
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
    allowSharedKeyAccess: true
    largeFileSharesState: 'Enabled'
    networkAcls: {
      resourceAccessRules: [
        {
          tenantId: 'eca6ce32-fa7b-4772-a4cf-0c22a6b59324'
          resourceId: '/subscriptions/692afa0b-fb94-4544-9077-75f21578b5eb/providers/Microsoft.Security/datascanners/storageDataScanner'
        }
      ]
      bypass: 'AzureServices'
      virtualNetworkRules: [
        {
          id: virtualNetworks_atlas_vnet_uat_name_atlas_webapp_subnet_uat.id
          action: 'Allow'
          state: 'Succeeded'
        }
      ]
      ipRules: []
      defaultAction: 'Allow'
    }
    supportsHttpsTrafficOnly: true
    encryption: {
      requireInfrastructureEncryption: false
      services: {
        file: {
          keyType: 'Account'
          enabled: true
        }
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
      keySource: 'Microsoft.Storage'
    }
    accessTier: 'Hot'
  }
}

resource storageAccounts_atlasimageuat_name_default 'Microsoft.Storage/storageAccounts/blobServices@2024-01-01' = {
  parent: storageAccounts_atlasimageuat_name_resource
  name: 'default'
  sku: {
    name: 'Standard_RAGRS'
    tier: 'Standard'
  }
  properties: {
    cors: {
      corsRules: []
    }
    deleteRetentionPolicy: {
      allowPermanentDelete: false
      enabled: true
      days: 7
    }
    containerDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource storageAccounts_atlaspdfuat_name_default 'Microsoft.Storage/storageAccounts/blobServices@2024-01-01' = {
  parent: storageAccounts_atlaspdfuat_name_resource
  name: 'default'
  sku: {
    name: 'Standard_RAGRS'
    tier: 'Standard'
  }
  properties: {
    cors: {
      corsRules: [
        {
          allowedOrigins: [
            'https://uat.app.mybexa.com'
          ]
          allowedMethods: [
            'GET'
          ]
          maxAgeInSeconds: 3600
          exposedHeaders: [
            '*'
          ]
          allowedHeaders: [
            '*'
          ]
        }
      ]
    }
    deleteRetentionPolicy: {
      allowPermanentDelete: false
      enabled: true
      days: 7
    }
    containerDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource Microsoft_Storage_storageAccounts_fileServices_storageAccounts_atlasimageuat_name_default 'Microsoft.Storage/storageAccounts/fileServices@2024-01-01' = {
  parent: storageAccounts_atlasimageuat_name_resource
  name: 'default'
  sku: {
    name: 'Standard_RAGRS'
    tier: 'Standard'
  }
  properties: {
    protocolSettings: {
      smb: {}
    }
    cors: {
      corsRules: []
    }
    shareDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource Microsoft_Storage_storageAccounts_fileServices_storageAccounts_atlaspdfuat_name_default 'Microsoft.Storage/storageAccounts/fileServices@2024-01-01' = {
  parent: storageAccounts_atlaspdfuat_name_resource
  name: 'default'
  sku: {
    name: 'Standard_RAGRS'
    tier: 'Standard'
  }
  properties: {
    protocolSettings: {
      smb: {}
    }
    cors: {
      corsRules: []
    }
    shareDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource storageAccounts_atlasimageuat_name_storageAccounts_atlasimageuat_name_1707284b_a730_408e_a1cd_381fa1c3cfc0 'Microsoft.Storage/storageAccounts/privateEndpointConnections@2024-01-01' = {
  parent: storageAccounts_atlasimageuat_name_resource
  name: '${storageAccounts_atlasimageuat_name}.1707284b-a730-408e-a1cd-381fa1c3cfc0'
  properties: {
    privateEndpoint: {}
    privateLinkServiceConnectionState: {
      status: 'Approved'
      description: 'Auto-Approved'
      actionRequired: 'None'
    }
  }
}

resource Microsoft_Storage_storageAccounts_queueServices_storageAccounts_atlasimageuat_name_default 'Microsoft.Storage/storageAccounts/queueServices@2024-01-01' = {
  parent: storageAccounts_atlasimageuat_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_queueServices_storageAccounts_atlaspdfuat_name_default 'Microsoft.Storage/storageAccounts/queueServices@2024-01-01' = {
  parent: storageAccounts_atlaspdfuat_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_tableServices_storageAccounts_atlasimageuat_name_default 'Microsoft.Storage/storageAccounts/tableServices@2024-01-01' = {
  parent: storageAccounts_atlasimageuat_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_tableServices_storageAccounts_atlaspdfuat_name_default 'Microsoft.Storage/storageAccounts/tableServices@2024-01-01' = {
  parent: storageAccounts_atlaspdfuat_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource sites_atlas_webapp_frontend_uat_name_resource 'Microsoft.Web/sites@2024-04-01' = {
  name: sites_atlas_webapp_frontend_uat_name
  location: 'West US 2'
  kind: 'app,linux'
  properties: {
    enabled: true
    hostNameSslStates: [
      {
        name: '${sites_atlas_webapp_frontend_uat_name}-aqezhebbbug7hpak.westus2-01.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Standard'
      }
      {
        name: '${sites_atlas_webapp_frontend_uat_name}-aqezhebbbug7hpak.scm.westus2-01.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Repository'
      }
    ]
    serverFarmId: serverfarms_atlas_service_plan_frontend_uat_name_resource.id
    reserved: true
    isXenon: false
    hyperV: false
    dnsConfiguration: {}
    vnetRouteAllEnabled: false
    vnetImagePullEnabled: false
    vnetContentShareEnabled: false
    siteConfig: {
      numberOfWorkers: 1
      linuxFxVersion: 'NODE|20-lts'
      acrUseManagedIdentityCreds: false
      alwaysOn: true
      http20Enabled: false
      functionAppScaleLimit: 0
      minimumElasticInstanceCount: 0
    }
    scmSiteAlsoStopped: false
    clientAffinityEnabled: false
    clientCertEnabled: false
    clientCertMode: 'Required'
    hostNamesDisabled: false
    ipMode: 'IPv4'
    vnetBackupRestoreEnabled: false
    customDomainVerificationId: 'FFF668D068D20C4FFFD6D0D9CFDA600169B12C07CFE8EDD9980D2670AFA80BDC'
    containerSize: 0
    dailyMemoryTimeQuota: 0
    httpsOnly: true
    endToEndEncryptionEnabled: false
    redundancyMode: 'None'
    publicNetworkAccess: 'Enabled'
    storageAccountRequired: false
    keyVaultReferenceIdentity: 'SystemAssigned'
    autoGeneratedDomainNameLabelScope: 'TenantReuse'
  }
}

resource sites_atlas_webapp_backend_uat_name_ftp 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2024-04-01' = {
  parent: sites_atlas_webapp_backend_uat_name_resource
  name: 'ftp'
  location: 'West US 2'
  properties: {
    allow: true
  }
}

resource sites_atlas_webapp_frontend_uat_name_ftp 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2024-04-01' = {
  parent: sites_atlas_webapp_frontend_uat_name_resource
  name: 'ftp'
  location: 'West US 2'
  properties: {
    allow: true
  }
}

resource sites_atlas_webapp_backend_uat_name_scm 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2024-04-01' = {
  parent: sites_atlas_webapp_backend_uat_name_resource
  name: 'scm'
  location: 'West US 2'
  properties: {
    allow: true
  }
}

resource sites_atlas_webapp_frontend_uat_name_scm 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2024-04-01' = {
  parent: sites_atlas_webapp_frontend_uat_name_resource
  name: 'scm'
  location: 'West US 2'
  properties: {
    allow: true
  }
}

resource sites_atlas_webapp_backend_uat_name_web 'Microsoft.Web/sites/config@2024-04-01' = {
  parent: sites_atlas_webapp_backend_uat_name_resource
  name: 'web'
  location: 'West US 2'
  properties: {
    numberOfWorkers: 1
    defaultDocuments: [
      'Default.htm'
      'Default.html'
      'Default.asp'
      'index.htm'
      'index.html'
      'iisstart.htm'
      'default.aspx'
      'index.php'
      'hostingstart.html'
    ]
    netFrameworkVersion: 'v4.0'
    linuxFxVersion: 'NODE|20-lts'
    requestTracingEnabled: false
    remoteDebuggingEnabled: false
    httpLoggingEnabled: false
    acrUseManagedIdentityCreds: false
    logsDirectorySizeLimit: 35
    detailedErrorLoggingEnabled: false
    publishingUsername: '$atlas-webapp-backend-uat'
    scmType: 'BitbucketGit'
    use32BitWorkerProcess: true
    webSocketsEnabled: false
    alwaysOn: true
    managedPipelineMode: 'Integrated'
    virtualApplications: [
      {
        virtualPath: '/'
        physicalPath: 'site\\wwwroot'
        preloadEnabled: true
      }
    ]
    loadBalancing: 'LeastRequests'
    experiments: {
      rampUpRules: []
    }
    autoHealEnabled: false
    vnetName: 'cea418b9-dacf-466a-b635-1256a54651c4_atlas-webapp-subnet-uat'
    vnetRouteAllEnabled: true
    vnetPrivatePortsCount: 0
    publicNetworkAccess: 'Enabled'
    cors: {
      allowedOrigins: [
        'https://uat.app.mybexa.com'
        'https://ashy-coast-05dbc3d1e.4.azurestaticapps.net'
        'https://uat.exams.mybexa.com'
      ]
      supportCredentials: true
    }
    localMySqlEnabled: false
    ipSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictionsUseMain: false
    http20Enabled: false
    minTlsVersion: '1.2'
    scmMinTlsVersion: '1.2'
    ftpsState: 'FtpsOnly'
    preWarmedInstanceCount: 0
    elasticWebAppScaleLimit: 0
    functionsRuntimeScaleMonitoringEnabled: false
    minimumElasticInstanceCount: 0
    azureStorageAccounts: {}
  }
}

resource sites_atlas_webapp_frontend_uat_name_web 'Microsoft.Web/sites/config@2024-04-01' = {
  parent: sites_atlas_webapp_frontend_uat_name_resource
  name: 'web'
  location: 'West US 2'
  properties: {
    numberOfWorkers: 1
    defaultDocuments: [
      'Default.htm'
      'Default.html'
      'Default.asp'
      'index.htm'
      'index.html'
      'iisstart.htm'
      'default.aspx'
      'index.php'
      'hostingstart.html'
    ]
    netFrameworkVersion: 'v4.0'
    linuxFxVersion: 'NODE|20-lts'
    requestTracingEnabled: false
    remoteDebuggingEnabled: false
    httpLoggingEnabled: false
    acrUseManagedIdentityCreds: false
    logsDirectorySizeLimit: 35
    detailedErrorLoggingEnabled: false
    publishingUsername: '$atlas-webapp-frontend-uat'
    scmType: 'None'
    use32BitWorkerProcess: true
    webSocketsEnabled: false
    alwaysOn: true
    managedPipelineMode: 'Integrated'
    virtualApplications: [
      {
        virtualPath: '/'
        physicalPath: 'site\\wwwroot'
        preloadEnabled: true
      }
    ]
    loadBalancing: 'LeastRequests'
    experiments: {
      rampUpRules: []
    }
    autoHealEnabled: false
    vnetRouteAllEnabled: false
    vnetPrivatePortsCount: 0
    publicNetworkAccess: 'Enabled'
    localMySqlEnabled: false
    ipSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictionsUseMain: false
    http20Enabled: false
    minTlsVersion: '1.2'
    scmMinTlsVersion: '1.2'
    ftpsState: 'FtpsOnly'
    preWarmedInstanceCount: 0
    elasticWebAppScaleLimit: 0
    functionsRuntimeScaleMonitoringEnabled: false
    minimumElasticInstanceCount: 0
    azureStorageAccounts: {}
  }
}

resource sites_atlas_webapp_backend_uat_name_01692af126c22f6d4f0dde710bd2394883768d2f 'Microsoft.Web/sites/deployments@2024-04-01' = {
  parent: sites_atlas_webapp_backend_uat_name_resource
  name: '01692af126c22f6d4f0dde710bd2394883768d2f'
  location: 'West US 2'
  properties: {
    status: 4
    author_email: 'penny.hsiao@parkerandace.com'
    author: 'Penny Hsiao'
    deployer: 'Bitbucket'
    message: 'AT-388 add new API for get first available time'
    start_time: '2025-02-21T19:33:43.2505829Z'
    end_time: '2025-02-21T19:34:53.1333719Z'
    active: false
  }
}

resource sites_atlas_webapp_backend_uat_name_37972ce00e248fefe6cc909777de6b1449c994c3 'Microsoft.Web/sites/deployments@2024-04-01' = {
  parent: sites_atlas_webapp_backend_uat_name_resource
  name: '37972ce00e248fefe6cc909777de6b1449c994c3'
  location: 'West US 2'
  properties: {
    status: 4
    author_email: 'jake.peterson@mybexa.com'
    author: 'Jake Peterson'
    deployer: 'Bitbucket'
    message: 'Merged in QA (pull request #14)\n    \n    QA'
    start_time: '2025-03-05T17:25:10.4114834Z'
    end_time: '2025-03-05T17:26:15.0093629Z'
    active: false
  }
}

resource sites_atlas_webapp_backend_uat_name_765eaaa815c85d1a9ddc1fb63d25814975bd25ac 'Microsoft.Web/sites/deployments@2024-04-01' = {
  parent: sites_atlas_webapp_backend_uat_name_resource
  name: '765eaaa815c85d1a9ddc1fb63d25814975bd25ac'
  location: 'West US 2'
  properties: {
    status: 4
    author_email: 'penny.hsiao@mybexa.com'
    author: 'Penny Hsiao'
    deployer: 'Bitbucket'
    message: 'Merged in QA (pull request #31)\n    \n    QA'
    start_time: '2025-03-21T17:25:12.2152583Z'
    end_time: '2025-03-21T17:26:02.9790885Z'
    active: true
  }
}

resource sites_atlas_webapp_backend_uat_name_sites_atlas_webapp_backend_uat_name_bpd4cvfdf9hhbvdm_westus2_01_azurewebsites_net 'Microsoft.Web/sites/hostNameBindings@2024-04-01' = {
  parent: sites_atlas_webapp_backend_uat_name_resource
  name: '${sites_atlas_webapp_backend_uat_name}-bpd4cvfdf9hhbvdm.westus2-01.azurewebsites.net'
  location: 'West US 2'
  properties: {
    siteName: 'atlas-webapp-backend-uat'
    hostNameType: 'Verified'
  }
}

resource sites_atlas_webapp_frontend_uat_name_sites_atlas_webapp_frontend_uat_name_aqezhebbbug7hpak_westus2_01_azurewebsites_net 'Microsoft.Web/sites/hostNameBindings@2024-04-01' = {
  parent: sites_atlas_webapp_frontend_uat_name_resource
  name: '${sites_atlas_webapp_frontend_uat_name}-aqezhebbbug7hpak.westus2-01.azurewebsites.net'
  location: 'West US 2'
  properties: {
    siteName: 'atlas-webapp-frontend-uat'
    hostNameType: 'Verified'
  }
}

resource sites_atlas_webapp_backend_uat_name_uat_app_api_mybexa_com 'Microsoft.Web/sites/hostNameBindings@2024-04-01' = {
  parent: sites_atlas_webapp_backend_uat_name_resource
  name: 'uat.app-api.mybexa.com'
  location: 'West US 2'
  properties: {
    siteName: 'atlas-webapp-backend-uat'
    hostNameType: 'Verified'
    sslState: 'SniEnabled'
    thumbprint: '08FCAC7777D53D5C4F7C9B219E5C0E48480C7B87'
  }
}

resource staticSites_atlas_client_landing_page_uat_name_default 'Microsoft.Web/staticSites/basicAuth@2024-04-01' = {
  parent: staticSites_atlas_client_landing_page_uat_name_resource
  name: 'default'
  location: 'West US 2'
  properties: {
    applicableEnvironmentsMode: 'SpecifiedEnvironments'
  }
}

resource staticSites_atlas_static_webapp_frontend_uat_name_default 'Microsoft.Web/staticSites/basicAuth@2024-04-01' = {
  parent: staticSites_atlas_static_webapp_frontend_uat_name_resource
  name: 'default'
  location: 'West US 2'
  properties: {
    applicableEnvironmentsMode: 'SpecifiedEnvironments'
  }
}

resource staticSites_atlas_static_webapp_frontend_uat_name_uat_app_mybexa_com 'Microsoft.Web/staticSites/customDomains@2024-04-01' = {
  parent: staticSites_atlas_static_webapp_frontend_uat_name_resource
  name: 'uat.app.mybexa.com'
  location: 'West US 2'
  properties: {}
}

resource staticSites_atlas_client_landing_page_uat_name_uat_exams_mybexa_com 'Microsoft.Web/staticSites/customDomains@2024-04-01' = {
  parent: staticSites_atlas_client_landing_page_uat_name_resource
  name: 'uat.exams.mybexa.com'
  location: 'West US 2'
  properties: {}
}

resource bastionHosts_atlas_vnet_bastion_uat_name_resource 'Microsoft.Network/bastionHosts@2024-05-01' = {
  name: bastionHosts_atlas_vnet_bastion_uat_name
  location: 'westus2'
  sku: {
    name: 'Standard'
  }
  properties: {
    dnsName: 'bst-2c437387-58b6-4a15-ac4e-e24162ea4ce9.bastion.azure.com'
    scaleUnits: 2
    enableTunneling: true
    enableIpConnect: false
    disableCopyPaste: false
    enableShareableLink: false
    enableKerberos: false
    enableSessionRecording: false
    enablePrivateOnlyBastion: false
    ipConfigurations: [
      {
        name: 'IpConf'
        id: '${bastionHosts_atlas_vnet_bastion_uat_name_resource.id}/bastionHostIpConfigurations/IpConf'
        properties: {
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIPAddresses_atlas_vnet_bastion_ip_uat_name_resource.id
          }
          subnet: {
            id: virtualNetworks_atlas_vnet_uat_name_AzureBastionSubnet.id
          }
        }
      }
    ]
  }
}

resource networkInterfaces_atlas_jumpbox_uat869_z1_name_resource 'Microsoft.Network/networkInterfaces@2024-05-01' = {
  name: networkInterfaces_atlas_jumpbox_uat869_z1_name
  location: 'westus2'
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        id: '${networkInterfaces_atlas_jumpbox_uat869_z1_name_resource.id}/ipConfigurations/ipconfig1'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          privateIPAddress: '10.0.4.4'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: virtualNetworks_atlas_vnet_uat_name_atlas_vm_subnet_uat.id
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    networkSecurityGroup: {
      id: networkSecurityGroups_atlas_jumpbox_uat_nsg_name_resource.id
    }
    nicType: 'Standard'
    auxiliaryMode: 'None'
    auxiliarySku: 'None'
  }
}

resource privateDnsZones_privatelink_blob_core_windows_net_name_nlk4aafvuvrje 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2024-06-01' = {
  parent: privateDnsZones_privatelink_blob_core_windows_net_name_resource
  name: 'nlk4aafvuvrje'
  location: 'global'
  properties: {
    registrationEnabled: false
    resolutionPolicy: 'Default'
    virtualNetwork: {
      id: virtualNetworks_atlas_vnet_uat_name_resource.id
    }
  }
}

resource privateEndpoints_atlas_image_uat_pe_name_resource 'Microsoft.Network/privateEndpoints@2024-05-01' = {
  name: privateEndpoints_atlas_image_uat_pe_name
  location: 'westus2'
  properties: {
    privateLinkServiceConnections: [
      {
        name: '${privateEndpoints_atlas_image_uat_pe_name}_f29f7341-61e0-4955-ab60-3d9f5df3f024'
        id: '${privateEndpoints_atlas_image_uat_pe_name_resource.id}/privateLinkServiceConnections/${privateEndpoints_atlas_image_uat_pe_name}_f29f7341-61e0-4955-ab60-3d9f5df3f024'
        properties: {
          privateLinkServiceId: storageAccounts_atlasimageuat_name_resource.id
          groupIds: [
            'blob'
          ]
          privateLinkServiceConnectionState: {
            status: 'Approved'
            description: 'Auto-Approved'
            actionsRequired: 'None'
          }
        }
      }
    ]
    manualPrivateLinkServiceConnections: []
    subnet: {
      id: virtualNetworks_atlas_vnet_uat_name_atlas_image_subnet_pe.id
    }
    ipConfigurations: []
    customDnsConfigs: [
      {
        fqdn: 'atlasimageuat.blob.core.windows.net'
        ipAddresses: [
          '10.0.2.4'
        ]
      }
    ]
  }
}

resource storageAccounts_atlasimageuat_name_default_client_location_photo 'Microsoft.Storage/storageAccounts/blobServices/containers@2024-01-01' = {
  parent: storageAccounts_atlasimageuat_name_default
  name: 'client-location-photo'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [
    storageAccounts_atlasimageuat_name_resource
  ]
}

resource storageAccounts_atlasimageuat_name_default_client_photo 'Microsoft.Storage/storageAccounts/blobServices/containers@2024-01-01' = {
  parent: storageAccounts_atlasimageuat_name_default
  name: 'client-photo'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [
    storageAccounts_atlasimageuat_name_resource
  ]
}

resource storageAccounts_atlaspdfuat_name_default_legal_document 'Microsoft.Storage/storageAccounts/blobServices/containers@2024-01-01' = {
  parent: storageAccounts_atlaspdfuat_name_default
  name: 'legal-document'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [
    storageAccounts_atlaspdfuat_name_resource
  ]
}

resource storageAccounts_atlasimageuat_name_default_member_photo 'Microsoft.Storage/storageAccounts/blobServices/containers@2024-01-01' = {
  parent: storageAccounts_atlasimageuat_name_default
  name: 'member-photo'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [
    storageAccounts_atlasimageuat_name_resource
  ]
}

resource storageAccounts_atlasimageuat_name_default_resource_photo 'Microsoft.Storage/storageAccounts/blobServices/containers@2024-01-01' = {
  parent: storageAccounts_atlasimageuat_name_default
  name: 'resource-photo'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [
    storageAccounts_atlasimageuat_name_resource
  ]
}

resource sites_atlas_webapp_backend_uat_name_resource 'Microsoft.Web/sites@2024-04-01' = {
  name: sites_atlas_webapp_backend_uat_name
  location: 'West US 2'
  kind: 'app,linux'
  properties: {
    enabled: true
    hostNameSslStates: [
      {
        name: '${sites_atlas_webapp_backend_uat_name}-bpd4cvfdf9hhbvdm.westus2-01.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Standard'
      }
      {
        name: 'uat.app-api.mybexa.com'
        sslState: 'SniEnabled'
        thumbprint: '08FCAC7777D53D5C4F7C9B219E5C0E48480C7B87'
        hostType: 'Standard'
      }
      {
        name: '${sites_atlas_webapp_backend_uat_name}-bpd4cvfdf9hhbvdm.scm.westus2-01.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Repository'
      }
    ]
    serverFarmId: serverfarms_atlas_service_plan_backend_uat_name_resource.id
    reserved: true
    isXenon: false
    hyperV: false
    dnsConfiguration: {}
    vnetRouteAllEnabled: true
    vnetImagePullEnabled: false
    vnetContentShareEnabled: false
    siteConfig: {
      numberOfWorkers: 1
      linuxFxVersion: 'NODE|20-lts'
      acrUseManagedIdentityCreds: false
      alwaysOn: true
      http20Enabled: false
      functionAppScaleLimit: 0
      minimumElasticInstanceCount: 0
    }
    scmSiteAlsoStopped: false
    clientAffinityEnabled: false
    clientCertEnabled: false
    clientCertMode: 'Required'
    hostNamesDisabled: false
    ipMode: 'IPv4'
    vnetBackupRestoreEnabled: false
    customDomainVerificationId: 'FFF668D068D20C4FFFD6D0D9CFDA600169B12C07CFE8EDD9980D2670AFA80BDC'
    containerSize: 0
    dailyMemoryTimeQuota: 0
    httpsOnly: true
    endToEndEncryptionEnabled: false
    redundancyMode: 'None'
    publicNetworkAccess: 'Enabled'
    storageAccountRequired: false
    virtualNetworkSubnetId: virtualNetworks_atlas_vnet_uat_name_atlas_webapp_subnet_uat.id
    keyVaultReferenceIdentity: 'SystemAssigned'
    autoGeneratedDomainNameLabelScope: 'TenantReuse'
  }
}

resource sites_atlas_webapp_backend_uat_name_cea418b9_dacf_466a_b635_1256a54651c4_atlas_webapp_subnet_uat 'Microsoft.Web/sites/virtualNetworkConnections@2024-04-01' = {
  parent: sites_atlas_webapp_backend_uat_name_resource
  name: 'cea418b9-dacf-466a-b635-1256a54651c4_atlas-webapp-subnet-uat'
  location: 'West US 2'
  properties: {
    vnetResourceId: virtualNetworks_atlas_vnet_uat_name_atlas_webapp_subnet_uat.id
    isSwift: true
  }
}
