module.exports = {
    env: {
        browser: true,
        es6: true,
    },
    extends: ['airbnb-base', 'prettier'],
    globals: {
        Atomics: 'readonly',
        SharedArrayBuffer: 'readonly',
    },
    parser: '@typescript-eslint/parser',
    parserOptions: {
        ecmaVersion: 2022,
        sourceType: 'module',
    },
    plugins: ['@typescript-eslint', 'prettier'],
    rules: {
        'prettier/prettier': ['error'],
        'import/no-unresolved': 'off',
        'import/extensions': 'off',
        'no-bitwise': 'off',
    },
    overrides: [
        {
            files: ['*.ts'],
            rules: {
                '@typescript-eslint/no-unused-vars': [2, { args: 'none' }],
            },
        },
        {
            files: ['*.test.ts'],
            env: {
                jest: true,
            },
        },
    ],
};
