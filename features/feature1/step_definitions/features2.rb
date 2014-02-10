Then(/^verify the airmiles card image exists in header$/) do
  $browser.image(:src=>"/arrow/webresource/v2/img/logo-card-en.png").exist?
end