<?php
/**
 * @package Masters Contact Info
 * @author Christopher Masters <chris@masterswebsolutions.com>
 * @copyright Copyright (c) 2011 Christopher Masters DBA Masters Web Solutions. All Rights Reserved.
 * @license GNU/GPL 2, http://www.gnu.org/licenses/gpl-2.0.html
 */
defined('_JEXEC') or die('Restricted access'); // no direct access
?>
<div class="mci<?php echo $suffix; ?>"<?php echo $containerCSS; ?>>
<?php if ($beforeText) : ?>
<<?php echo $format . $beforeCSS; ?> class="mci-before-text">
<?php echo $beforeText; ?>
</<?php echo $format; ?>>
<?php endif; ?>
<?php if ($contactGrouping == 'category') : ?>
<?php if (!$params->get('category_column', '')) : ?>
<?php $categoryCounter = 0; ?>
<?php foreach ($contacts as $categoryName => $categoryGroup) : ?>
<?php $categoryCounter++;?>
<div class="mci-category"<?php if ($categoryCounter > 1) echo $categoryStyle; ?>>
<?php if ($params->get('cat_head', 0)) : ?>
<h<?php echo $params->get('cat_head_level', 3); ?>><?php echo $categoryName; ?></h<?php echo $params->get('cat_head_level', 3); ?>>
<?php endif; ?>
<?php $numItems = count($categoryGroup); $rowCount = floor($numItems / $columns); $counter=1;?>
<?php $rowTotalCounter = 0;?>
<?php $i=1;foreach ($categoryGroup as $contact) : ?>
<?php $rowTotalCounter++; ?>
<?php $rowCount=(((int)$counter-1) % (int) $columns) +1; ?>
<?php if ($evenOdd) $evenOdd = $evenOdd == ' odd' ? ' even' : ' odd'; ?>
<?php if ($rowCount == 1) : ?>
<div class="mci-row"<?php if ($rowTotalCounter > 1) echo $rowStyle; ?>>
<?php endif; ?>
<div class="mci-block <?php echo $colClass; ?> <?php echo 'col-' . $rowCount; ?>">
<div class="mci-item item-<?php echo $i;$i++;?><?php if ($evenOdd) echo $evenOdd; ?>" id="mci-contact-<?php echo $contact->id; ?>"<?php echo $itemCSS; ?>>
<?php foreach ($contactDetails as $contactDetail) : ?>
<?php if ($contactDetail && $contact->$contactDetail) : ?>
<?php if ($cityStateZipInline && ($contactDetail == 'suburb' || $contactDetail == 'state' || $contactDetail == 'postcode')) : ?>
<span class="mci-field field-<?php echo $contactDetail; ?>"><?php echo $contact->$contactDetail; ?></span>

<?php elseif ($contactDetail == 'sortname1') : ?>
<div class="mci-field field-<?php echo $contactDetail; ?>" style="text-transform: capitalize;">Codice Fiscale:   &nbsp;<span style="text-transform: uppercase;" class="mci-field field-<?php echo $contactDetail; ?>"><?php echo $contact->$contactDetail; ?></span>
</div>
<?php elseif ($contactDetail == 'sortname2') : ?>
<div class="mci-field field-<?php echo $contactDetail; ?>" style="text-transform: uppercase ;">IBAN:   &nbsp;<span class="mci-field field-<?php echo $contactDetail; ?>"><?php echo $contact->$contactDetail; ?></span>
</div>
<?php elseif ($contactDetail == 'sortname3') : ?>
<div class="mci-field field-<?php echo $contactDetail; ?>" style="text-transform: none ;">presso la filiale:   &nbsp;<span class="mci-field field-<?php echo $contactDetail; ?>"><?php echo $contact->$contactDetail; ?></span>
</div>



<?php else : ?>
<div class="mci-field field-<?php echo $contactDetail; ?>"><?php echo $contact->$contactDetail; ?></div>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; ?>
</div><?php // end item ?>
</div><?php // end block ?>
<?php $counter++; ?>
<?php if (($rowCount == $columns) || ($counter == $numItems+1)): ?>
</div><?php // end row ?>
<?php endif; ?>
<?php endforeach; ?>
</div><?php // end group ?>	
<?php endforeach; ?>
<?php else : ?>
<?php $numItems = count($contacts); $rowCount = floor($numItems / $columns); $counter=1;?>
<?php $rowTotalCounter = 0; ?>
<?php foreach ($contacts as $categoryName => $categoryGroup) : ?>
<?php $rowTotalCounter++; ?>
<?php $rowCount = (((int)$counter-1) % (int) $columns) +1; ?>
<?php if ($evenOdd) $evenOdd = $evenOdd == ' odd' ? ' even' : ' odd'; ?>
<?php if ($rowCount==1) : ?>
<div class="mci-row"<?php if ($rowTotalCounter > 1) echo $rowStyle; ?>>
<?php endif; ?>
<div class="mci-block <?php echo $colClass; ?> <?php echo 'col-' . $rowCount; ?>">
<?php if ($params->get('cat_head', 0)) : ?>
<h<?php echo $params->get('cat_head_level', 3); ?>><?php echo $categoryName; ?></h<?php echo $params->get('cat_head_level', 3); ?>>
<?php endif; ?>
<?php $i=1;foreach ($categoryGroup as $contact) : ?>
<div class="mci-row mci-item item-<?php echo $i;$i++;?><?php if ($evenOdd) echo $evenOdd; ?>" id="mci-contact-<?php echo $contact->id; ?>"<?php echo $itemCSS; ?>>
<?php foreach ($contactDetails as $contactDetail) : ?>
<?php if ($contactDetail && $contact->$contactDetail) : ?>
<?php if ($cityStateZipInline && ($contactDetail == 'suburb' || $contactDetail == 'state' || $contactDetail == 'postcode')) : ?>
<span class="mci-field field-<?php echo $contactDetail; ?>"><?php echo $contact->$contactDetail; ?></span>
<?php else : ?>
<div class="mci-field field-<?php echo $contactDetail; ?>"><?php echo $contact->$contactDetail; ?></div>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; ?>
</div><?php // end item ?>
<?php endforeach; ?>
</div><?php // end block ?>
<?php $counter++; ?>
<?php if (($rowCount == $columns) || ($counter == $numItems+1)): ?>
</div><?php // end row ?>
<?php endif; ?>
<?php endforeach; ?>
<?php endif; ?>
<?php else : ?>
<?php $numItems = count($contacts); $rowCount = floor($numItems / $columns); $counter=1; ?>
<?php if ($numItems == 1 && $format == 'span') : ?>
<?php foreach ($contacts as $contact) : ?>
<?php foreach ($contactDetails as $contactDetail) : ?>
<?php if ($contactDetail && $contact->$contactDetail) : ?>
<<?php echo $format . $itemCSS; ?>>
<<?php echo $format; ?> class="mci-field field-<?php echo $contactDetail; ?>"><?php echo $contact->$contactDetail; ?></<?php echo $format; ?>>
</<?php echo $format; ?>>
<?php endif; ?>
<?php endforeach; ?>
<?php endforeach; ?>
<?php else : ?>
<?php $rowTotalCounter = 0; ?>
<?php $i=1;foreach ($contacts as $contact) : ?>
<?php $rowTotalCounter++; ?>
<?php $rowCount=(((int)$counter-1) % (int) $columns) +1; ?>
<?php if ($evenOdd) $evenOdd = $evenOdd == ' odd' ? ' even' : ' odd'; ?>
<?php if ($rowCount == 1) : ?>
<div class="mci-row"<?php if ($rowTotalCounter > 1) echo $rowStyle; ?>>
<?php endif; ?>
<div class="mci-block <?php echo $colClass; ?> <?php echo 'col-' . $rowCount; ?>">
<div class="mci-item item-<?php echo $i;$i++;?><?php if ($evenOdd) echo $evenOdd; ?>"<?php echo $itemCSS; ?>>
<?php foreach ($contactDetails as $contactDetail) : ?>
<?php if ($contactDetail && $contact->$contactDetail) : ?>

<?php if ($cityStateZipInline && ($contactDetail == 'suburb' || $contactDetail == 'state' || $contactDetail == 'postcode')) : ?>
<span class="mci-field field-<?php echo $contactDetail; ?>"><?php echo $contact->$contactDetail; ?></span>
<?php else : ?>
<?php if ($contactDetail == 'sortname1') : ?>
<span class="mci-field field-<?php echo $contactDetail; ?>"><p>Codice Fiscale: </p><?php echo $contact->$contactDetail; ?></span>
<?php endif; ?>


<div class="mci-field field-<?php echo $contactDetail; ?>">Che barba: <?php echo $contact->$contactDetail; ?></div>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; ?>
</div><?php // end item ?>
</div><?php // end block ?>
<?php $counter++; ?>
<?php if (($rowCount == $columns) || ($counter == $numItems+1)): ?>
</div><?php // end row ?>
<?php endif; ?>
<?php endforeach; ?>
<?php endif; ?>
<?php endif; ?>
<?php if ($afterText) : ?>
<<?php echo $format . $afterCSS; ?> class="mci-after-text"> 
<br />

<a href="index.php?option=com_content&view=article&id=13" target="_self">Vedi Tutti...</a>
<?php echo $afterText; ?>
</<?php echo $format; ?>>
<?php endif; ?>
</div><?php // End MCI ?>
