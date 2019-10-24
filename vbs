var a=[
    {
    'name': 'category1',
    'ncf':'',
    'aum':'',
    'types': {
        'etf':{
             'name': 'etf1',
            'ncf':'',
            'aum':'',
            'products':[{
                     'name': 'productsetf1',
                    'ncf':'11',
                    'aum':'22'
            },
            {

                    'name': 'productsetf12',
                    'ncf':'22',
                    'aum':'22',
            }]
        },
       'mf':{
             'name': 'mf1',
            'ncf':'',
            'aum':'',
            'products':[{
                     'name': 'productsmf1',
                    'ncf':'20',
                    'aum':'20'
            },
            {

                    'name': 'productsmf2',
                    'ncf':'30',
                    'aum':'20',
            }]
        }
    }
},
    {
    'name': 'category2',
    'ncf':'',
    'aum':'',
    'types': {
        'etf':{
             'name': 'etf2',
            'ncf':'',
            'aum':'',
            'products':[{
                     'name': 'productsetf21',
                    'ncf':'10',
                    'aum':'30'
            },
            {

                    'name': 'productsetf22',
                    'ncf':'20',
                    'aum':'40',
            }]
        },
       'mf':{
             'name': 'mf1',
            'ncf':'',
            'aum':'',
            'products':[{
                     'name': 'productsmf1',
                    'ncf':'20',
                    'aum':'20'
            },
            {

                    'name': 'productsmf2',
                    'ncf':'30',
                    'aum':'20',
            }]
        }
    }
},

]

var etf = a[0].types.etf,
     mf = a[0].types.mf;
 



 a.forEach((firstLevelRow) => {

var etfSubProdAumSum=0,
etfSubProdNcfSum=0,
mfSubProdAumSum=0,
mfSubProdNcfSum=0;

firstLevelRow.types.etf.products.forEach((etfProdObj)=>{


    etfSubProdAumSum =etfSubProdAumSum+parseFloat(etfProdObj.aum);
    etfSubProdNcfSum= etfSubProdNcfSum+parseFloat(etfProdObj.ncf);

});

firstLevelRow.types.etf.aum = etfSubProdAumSum;
firstLevelRow.types.etf.ncf = etfSubProdNcfSum;

firstLevelRow.types.mf.products.forEach((mfProdObj)=>{

    mfSubProdAumSum =mfSubProdAumSum+parseFloat(mfProdObj.aum);
    mfSubProdNcfSum= mfSubProdNcfSum+parseFloat(mfProdObj.ncf);

});

firstLevelRow.types.mf.aum = mfSubProdAumSum;
firstLevelRow.types.mf.ncf = mfSubProdNcfSum;

firstLevelRow.aum = etfSubProdAumSum + mfSubProdAumSum
firstLevelRow.ncf = etfSubProdNcfSum + mfSubProdNcfSum

console.log(mfSubProdAumSum)
console.log(mfSubProdNcfSum)
console.log(firstLevelRow);
});
