json.array! @organizations.each do |organization|
  json.id organization.id
  json.school organization.school
  json.name organization.name
  json.color organization.color
  json.logo organization.logo
  json.motto organization.motto
end