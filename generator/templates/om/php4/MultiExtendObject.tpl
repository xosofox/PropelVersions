<?php

// Create empty stub subclass which extends the parent stub om class created in ExtensionObject.tpl.
//
// $Id: MultiExtendObject.tpl,v 1.2 2004/12/12 10:40:23 micha Exp $

echo '<' . '?' . 'php';

$db = $table->getDatabase();
if ($table->getPackage()) {
  $package = $table->getPackage();
} else {
  $package = $targetPackage;
}

$packagePath = strtr($package, '.', '/');
if ($packagePath != "") $packagePath .= '/';

if ($child->getAncestor()) {
    $parent = $child->getAncestor();
?> 

require_once '<?php echo strtr($parent, '.', '/') ?>.php';

<?php
  $parentClass = array_pop(explode('.', $parent));
} else {
  $parentClass = $table->getPhpName();
?> 

require_once '<?php echo $packagePath . $parentClass ?>.php';
<?php
}
?>

/** 
<?php if ($addTimeStamp) { ?>

 * The skeleton for this class was autogenerated by Propel on:
 *
 * [<?php echo $now ?>]
 *
<?php } ?>

 * You should add additional methods to this class to meet the
 * application requirements.  This class will only be generated as
 * long as it does not already exist in the output directory.
 */
class <?php echo $child->getClassName()?> extends <?php echo $parentClass ?> 
{

  function <?php echo $child->getClassName()?>()
  {
<?php
  $col = $child->getColumn();
  $cfc = $col->getPhpName();
  $table = $col->getTable();
?>
    $this->set<?php echo $cfc ?>(<?php echo $table->getPhpName() ?>Peer::CLASSKEY_<?php echo strtoupper($child->getKey()) ?>());
  }

}
