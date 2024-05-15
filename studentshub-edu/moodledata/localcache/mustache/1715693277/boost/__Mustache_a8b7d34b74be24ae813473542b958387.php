<?php

class __Mustache_a8b7d34b74be24ae813473542b958387 extends Mustache_Template
{
    private $lambdaHelper;

    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $this->lambdaHelper = new Mustache_LambdaHelper($this->mustache, $context);
        $buffer = '';

        $buffer .= $indent . '<div>
';
        $buffer .= $indent . '    <p>
';
        $buffer .= $indent . '        ';
        $value = $context->find('str');
        $buffer .= $this->section6fbb5cbd6163ce55f3b25cbf5b674e9a($context, $indent, $value);
        $buffer .= '
';
        $buffer .= $indent . '    </p>
';
        $value = $context->find('notoolsnotice');
        $buffer .= $this->section0542ce9d4d471a73fefd7b37618a4a5d($context, $indent, $value);
        $value = $context->find('addlink');
        $buffer .= $this->sectionF2a252aaf525a08c0f3218d066b62763($context, $indent, $value);
        $buffer .= $indent . '</div>
';

        return $buffer;
    }

    private function section6fbb5cbd6163ce55f3b25cbf5b674e9a(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' courseexternaltoolsinfo, mod_lti ';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= ' courseexternaltoolsinfo, mod_lti ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section0542ce9d4d471a73fefd7b37618a4a5d(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = '
        {{> core/notification_info}}
    ';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                if ($partial = $this->mustache->loadPartial('core/notification_info')) {
                    $buffer .= $partial->renderInternal($context, $indent . '        ');
                }
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section3b042c712f8fd08d8c61fd3b7b99b8c4(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = 'addtool, mod_lti';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= 'addtool, mod_lti';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function sectionF2a252aaf525a08c0f3218d066b62763(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = '
        <div class="mb-3">
            <a class="btn btn-primary" href="{{{.}}}">{{#str}}addtool, mod_lti{{/str}}</a>
        </div>
    ';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= $indent . '        <div class="mb-3">
';
                $buffer .= $indent . '            <a class="btn btn-primary" href="';
                $value = $this->resolveValue($context->last(), $context);
                $buffer .= ($value === null ? '' : $value);
                $buffer .= '">';
                $value = $context->find('str');
                $buffer .= $this->section3b042c712f8fd08d8c61fd3b7b99b8c4($context, $indent, $value);
                $buffer .= '</a>
';
                $buffer .= $indent . '        </div>
';
                $context->pop();
            }
        }
    
        return $buffer;
    }

}
