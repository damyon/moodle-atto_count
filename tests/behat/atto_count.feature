@editor @editor_atto @atto @atto_count
Feature: Enable the Atto count plugin and count words and characters
  In order to count words and characters in a Atto editor field
  As a user
  I need to be able to click the count button and see the results
  Background:
    Given I log in as "admin"
    And I navigate to "Plugins > Text editors > Atto HTML editor > Atto toolbar settings" in site administration
    And I set the field "Toolbar config" to multiline:
      """
      collapse = collapse
      style1 = title, bold, italic
      list = unorderedlist, orderedlist, indent
      links = link
      files = emojipicker, image, media, recordrtc, managefiles, h5p
      style2 = underline, strike, subscript, superscript
      align = align
      insert = equation, charmap, table, clear
      undo = undo
      accessibility = accessibilitychecker, accessibilityhelper
      other = html, count
      """
    And I click on "Save changes" "button"

  @javascript
  Scenario: Test count of words and characters of an atto editor field
    Given I open my profile in edit mode
    And I wait until the page is ready
    And I click on "Show more buttons" "button"
    And I click on "HTML" "button"
    And I set the field "Description" to multiline:
      """
      <p dir="ltr" style="text-align: left;"></p>
      <pre></pre>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam aliquet, metus at euismod porttitor, arcu velit dictum libero,
      in egestas diam purus in nibh. Donec congue enim pretium, accumsan justo sed, interdum mauris. Donec vestibulum lectus sed arcu
      convallis, vitae ultricies lorem ultricies. Morbi rhoncus est eget massa lobortis aliquet. Praesent porttitor ex in mi mollis
      condimentum. Proin eu mi malesuada sapien mollis venenatis nec sit amet dolor. Maecenas ornare felis vel viverra condimentum.
      Fusce lacinia tempor metus, a gravida metus bibendum ut. Sed mi velit, luctus at nisl vel, feugiat rhoncus nunc. Quisque at
      ligula et nunc sagittis dictum. Sed luctus lectus sit amet urna congue bibendum. Donec lobortis mi a magna suscipit, id gravida
      nibh malesuada. Vivamus luctus elit massa, tincidunt iaculis lacus blandit sit amet. Pellentesque semper elit ac varius commodo.
      Integer semper ex in ex convallis, at egestas arcu efficitur.</p>
      <p>Donec sed ligula vitae quam tristique varius. Quisque consectetur elementum elit ac euismod. Ut rhoncus arcu nec dictum
      viverra. Nam vel tristique lacus, id venenatis urna. Morbi condimentum ipsum et faucibus ullamcorper. Phasellus ut velit
      suscipit, congue tortor ac, molestie libero. Pellentesque non scelerisque nisl. Quisque nec pulvinar augue, eu gravida augue.
      Sed ullamcorper lorem eu lacus molestie, a mattis dui porttitor. Suspendisse vehicula elementum luctus. Praesent luctus eros sit
      amet auctor imperdiet. Mauris fringilla nisi massa, nec iaculis magna tempus vitae. Praesent suscipit tortor a lectus ultrices,
      sit amet condimentum sem imperdiet. Donec quis rutrum dolor. Duis ut nisl ac arcu maximus fermentum.</p>
      <p>Aenean mi metus, eleifend at gravida eget, blandit quis mi. Nunc mauris elit, malesuada nec tortor et, tempor cursus sapien.
      Curabitur facilisis malesuada mauris, in porttitor nunc tristique at. Fusce et nisi at nibh imperdiet vehicula nec in orci. Duis
      arcu velit, pulvinar a mauris volutpat, lobortis scelerisque urna. Suspendisse et lectus congue, pharetra enim eu, ultricies
      dolor. Maecenas arcu sem, iaculis ac lobortis et, vulputate in lacus. Nam non turpis fringilla, ornare lacus bibendum, eleifend
      purus. Aenean accumsan quam vitae eros placerat aliquam sed a orci. Suspendisse sed sodales magna. Nunc feugiat, magna eget
      ornare suscipit, nulla urna scelerisque tortor, vel facilisis lectus felis sed enim. Aliquam fermentum blandit nisi ac aliquam.
      </p>
      <p>Duis pellentesque massa turpis, eu tincidunt augue feugiat nec. Vivamus fermentum ornare diam, in rutrum neque. Suspendisse
      enim dolor, finibus finibus finibus at, semper vitae purus. In porttitor mi vitae nisi maximus, at vehicula mauris sagittis.
      Nullam quis blandit risus, quis imperdiet enim. Nulla blandit dignissim lacus. Fusce et vestibulum mauris. Fusce et metus id
      enim consequat gravida vel sit amet erat. Sed et arcu lectus. Class.</p><br>
      <p></p>
    """
    And I click on "HTML" "button"
    And I click on "Word count" "button"
    Then I should see "Words in text 428"
    And I should see "Letters in text 2448"

