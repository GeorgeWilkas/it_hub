<?php

class __Mustache_2882e9087fb80860a67d96d0973b5218 extends Mustache_Template
{
    private $lambdaHelper;

    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $this->lambdaHelper = new Mustache_LambdaHelper($this->mustache, $context);
        $buffer = '';

        if ($parent = $this->mustache->loadPartial('core_form/element-template-inline')) {
            $context->pushBlockContext(array(
                'element' => array($this, 'blockB6d19197ce9e82b3018aa814f8af9085'),
            ));
            $buffer .= $parent->renderInternal($context, $indent);
            $context->popBlockContext();
        }

        return $buffer;
    }

    private function section03ae853a492a34ffcd7ac0559504074c(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = '
            {{{separator}}}
            {{{html}}}
        ';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= $indent . '            ';
                $value = $this->resolveValue($context->find('separator'), $context);
                $buffer .= ($value === null ? '' : $value);
                $buffer .= '
';
                $buffer .= $indent . '            ';
                $value = $this->resolveValue($context->find('html'), $context);
                $buffer .= ($value === null ? '' : $value);
                $buffer .= '
';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    public function blockB6d19197ce9e82b3018aa814f8af9085($context)
    {
        $indent = $buffer = '';
        $buffer .= $indent . '        <div class="fdate_time_selector d-flex flex-wrap align-items-center">
';
        $value = $context->findDot('element.elements');
        $buffer .= $this->section03ae853a492a34ffcd7ac0559504074c($context, $indent, $value);
        $buffer .= $indent . '        </div>
';
    
        return $buffer;
    }
}
