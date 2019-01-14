# Ini Chef Cookbook

This cookbook provides a resource to create ini files using hashes.

## Resources

### ini

This resource is used to create ini files for general configuration.

#### Actions
* `:create` - Default action. Creates an ini file at the location specified by the name property.
* `:remove` - Removes an ini file at the location specified by the name property.

#### Attributes

<table style="width:80%">
  <tr>
    <th>Name</th>
    <th>Type</th>
    <th>Default</th>
    <th>Description</th>
    <th>Required?</th>
  </tr>
  <tr>
    <td>path</td>
    <td align="center">String</td>
     <td align="center">Name</td>
    <td>Path to place ini file</td>
    <td>true</td>
  </tr>
  <tr>
    <td>options</td>
    <td align="center">Hash</td>
    <td align="center">{ }</td>
    <td>A hash for configuring the ini file. A basic hash with keys and values of type string will render the file with 'key'='value'. Nesting a basic hash so the key is string and the value is another hash will create a section with the string as the name, and the hash value will render with 'key'='value'</td>
    <td>true</td>
  </tr>
  <tr>
    <td>mode</td>
    <td align="center">String</td>
    <td align="center">'0644'</td>
    <td>Unix file mode of .ini file</td>
    <td>false</td>
  </tr>
</table>
