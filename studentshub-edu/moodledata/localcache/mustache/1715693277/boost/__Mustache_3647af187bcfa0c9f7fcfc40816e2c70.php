<?php

class __Mustache_3647af187bcfa0c9f7fcfc40816e2c70 extends Mustache_Template
{
    private $lambdaHelper;

    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $this->lambdaHelper = new Mustache_LambdaHelper($this->mustache, $context);
        $buffer = '';

        $value = $context->find('hasitems');
        $buffer .= $this->section112e1b22d8618653db2fee38a027c2ee($context, $indent, $value);

        return $buffer;
    }

    private function sectionC6181c7eafad51a66e3cf27b2f6439e5(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = '
        <tr>
            <th class="cell" scope="row">{{{title}}}</th>
            <td class="cell">{{{content}}}</td>
        </tr>
    ';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= $indent . '        <tr>
';
                $buffer .= $indent . '            <th class="cell" scope="row">';
                $value = $this->resolveValue($context->find('title'), $context);
                $buffer .= ($value === null ? '' : $value);
                $buffer .= '</th>
';
                $buffer .= $indent . '            <td class="cell">';
                $value = $this->resolveValue($context->find('content'), $context);
                $buffer .= ($value === null ? '' : $value);
                $buffer .= '</td>
';
                $buffer .= $indent . '        </tr>
';
                $context->pop();
            }
        }
    
        return $buffer;
    }

    private function section112e1b22d8618653db2fee38a027c2ee(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = '
<table class="generaltable generalbox quizreviewsummary mb-0">
    <tbody>
    {{#items}}
        <tr>
            <th class="cell" scope="row">{{{title}}}</th>
            <td class="cell">{{{content}}}</td>
        </tr>
    {{/items}}
    </tbody>
</table>
';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= $indent . '<table class="generaltable generalbox quizreviewsummary mb-0">
';
                $buffer .= $indent . '    <tbody>
';
                $value = $context->find('items');
                $buffer .= $this->sectionC6181c7eafad51a66e3cf27b2f6439e5($context, $indent, $value);
                $buffer .= $indent . '    </tbody>
';
                $buffer .= $indent . '</table>
';
                $context->pop();
            }
        }
    
        return $buffer;
    }

}
