function set_theme(mode)

switch mode
    case 'dark'
        schemer_import('darksteel.prf',1);
    case 'light'
        schemer_import('vibrant.prf',1);
    case 'default'
        schemer_import('default.prf',1);
    otherwise
        % do nothing
end