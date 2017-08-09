# puppet-skeleton

## Description

Simplified skeleton puppet module for writing your own puppet modules.

## Parameters

The following parameters are available in the `skeleton` class.

#### `package_name`

Data type: String

Name of the package.

Default value: skeleton`

#### `package_ensure`

Data type: String

The ensure argument for the package.

Default value: `present`

#### `service_manage`

Data type: Bool

Whether to manage the skeleton service.

Default value: `true`

#### `service_ensure`

Data type: Enum['running', 'stopped']

Whether the service should be running or stopped.

Default value: `running`

#### `service_enable`

Data type: Bool

Whether to enable the skeleton service for system start.

Default value: `true`
