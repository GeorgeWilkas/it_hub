<?php

class __Mustache_b459217f1415871d5bf83c83a420a90e extends Mustache_Template
{
    private $lambdaHelper;

    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $this->lambdaHelper = new Mustache_LambdaHelper($this->mustache, $context);
        $buffer = '';

        $buffer .= $indent . '<button class="btn add-content section-modchooser section-modchooser-link activitychooser-button d-flex justify-content-center align-items-center p-1 icon-no-margin"
';
        $buffer .= $indent . '        data-action="open-chooser"
';
        $buffer .= $indent . '        data-sectionid="';
        $value = $this->resolveValue($context->find('sectionnum'), $context);
        $buffer .= ($value === null ? '' : call_user_func($this->mustache->getEscape(), $value));
        $buffer .= '"
';
        $buffer .= $indent . '        ';
        $value = $context->find('sectionreturn');
        $buffer .= $this->sectionB00314f847f0ef120c5be9eee264eaa8($context, $indent, $value);
        $buffer .= '
';
        $buffer .= $indent . '        data-beforemod="';
        $value = $this->resolveValue($context->find('id'), $context);
        $buffer .= ($value === null ? '' : call_user_func($this->mustache->getEscape(), $value));
        $buffer .= '"
';
        $buffer .= $indent . '        aria-label="';
        $value = $context->find('str');
        $buffer .= $this->section9a212121c7b2d8091fbf9fada23ff817($context, $indent, $value);
        $buffer .= '"
';
        $buffer .= $indent . '        tabindex="0"
';
        $buffer .= $indent . '        title="';
        $value = $context->find('str');
        $buffer .= $this->section037ed759c395d547607491573906432c($context, $indent, $value);
        $buffer .= '"
';
        $buffer .= $indent . '>
';
        $buffer .= $indent . '     ';
        $value = $context->find('pix');
        $buffer .= $this->section9b089e00077ec061918a3e4dd2d05479($context, $indent, $value);
        $buffer .= '
';
        $buffer .= $indent . '</button>
';

        return $buffer;
    }

    private function sectionB00314f847f0ef120c5be9eee264eaa8(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = 'data-sectionreturnid="{{.}}"';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= 'data-sectionreturnid="';
                $value = $this->resolveValue($context->last(), $context);
                $buffer .= ($value === null ? '' : call_user_func($this->mustache->getEscape(), $value));
                $buffer .= '"';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionAcd66ef23857ba2b241b6f8f23ef69c2(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' {{activityname}} ';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= ' ';
                $value = $this->resolveValue($context->find('activityname'), $context);
                $buffer .= ($value === null ? '' : call_user_func($this->mustache->getEscape(), $value));
                $buffer .= ' ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section9a212121c7b2d8091fbf9fada23ff817(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = 'insertresourceoractivitybefore, core, { "activityname": {{#quote}} {{activityname}} {{/quote}} } ';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= 'insertresourceoractivitybefore, core, { "activityname": ';
                $value = $context->find('quote');
                $buffer .= $this->sectionAcd66ef23857ba2b241b6f8f23ef69c2($context, $indent, $value);
                $buffer .= ' } ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section037ed759c395d547607491573906432c(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = 'addresourceoractivity, core';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= 'addresourceoractivity, core';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section9b089e00077ec061918a3e4dd2d05479(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' t/add, core ';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= ' t/add, core ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

}
