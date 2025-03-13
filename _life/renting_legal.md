Legal aspects of renting in Switzerland
=======================================

This page provides a brief overview of some legal aspects of apartment rental in Switzerland, in the hopes that it will help you navigate them in the future.

## Lease takeovers
In many countries, one can cancel one’s lease at any date as long as a certain notice period is respected. In Switzerland, this is usually not the case. A typical lease is valid for one year, and tacitly renewed. When you want to leave, you can only do so at its next term, and you also need to inform the landlord 3 months in advance of your intention of moving out. So, if you have moved into an apartment on 21.06.2020, and you want to move out in 2023, you will have to pay rent until 21.06.2023, and your notice should be received by your landlord no later than 21.03.2023 (https://bail.ch/bail/page/faq/10).

Luckily, there is a workaround for that: lease takeovers. If you can find a suitable (i.e. creditworthy) person who is willing to take over your lease at an earlier date, then you will be released from your obligation to honour the contract until its term. In order for that to work, that tenant needs to actually sign the lease. The landlord is free to refuse the new tenant you propose, but if they are unable to provide a legally valid reason (e.g. “this person’s salary is too low for the rent”), then you will be released from the contract. They may try to intimidate you into staying in the apartment until the end of the term by saying that they will refuse anyone you propose, but that is not legal.

## Rent increases
While you stay in an apartment, your rent cannot change arbitrarily. However, under specific circumstances, it may come to change. Rent variations throughout a lease are indexed on the reference mortgage rate[^mortgage] and the  consumer price index (IPC)[^IPC]. The former keeps track of the average mortgage rent across banks in the country at a given time. It is updated every 3 months, and is clipped to the nearest multiple of 0.25%. One can check its evolution [here](https://www.bwo.admin.ch/bwo/fr/home/mietrecht/referenzzinssatz/entwicklung-referenzzinssatz-und-durchschnittszinssatz.html). The latter is a measure of inflation.

Whenever these indices change, your rent can change. In practice, the IPC increases If they increase, it allows your landlord to increase your rent. Conversely, if they decrease, you are entitled to request a decrease in the rent. In either case, the new rent will be effective at the next term of your contract (usually your move-in date).

:warn: In case of a rent decrease, it is your own responsibility to request the rent decrease, the landlord will not do it for you. You should always request it if applicable. It not only affects your rent, but the one the next tenants will pay. 

### Calculation
If you receive a notice of rent increase, it is important that you check that it is in accordance with the law. A proper notice must follow a certain format[^increase_format], lest it is deemed invalid. The increase should be broken down into 3 categories:
- Increase of the reference mortgage rate: in the current conditions, this induces a 3% increase per 0.25% of increase in the mortgage rate[^mortgage_increase]. $\Delta R = \frac{\text{new rate} - \text{old rate}}{0.25} \times 0.03 \times R$
- Increase of the IPC: 40% of the relative increase of the index can be applied to your rent: $\Delta R = \frac{\text{new index} - \text{old index}}{\text{old index}} \times 0.4 \times R$
- Increase of landlord costs: this category is less clearly defined and encapsulates all increases in costs that the landlord can claim.

<p align="center">
  <img src=rent_increase.jpg/>
</p>

Above is an example of a rent increase notice, following the official format. By applying the formulas above, one can check that the increases in the first 2 categories indeed follow the law: the mortgage rate increased by 0.5 points, i.e. 2*0.25, hence an increase of  2 * 0.03 * 1210 = 72.60.
The IPC also increased by about 1%, resulting in an increase of (169.3 - 167.5) / 167.5 * 0.4 * 1210 = 5.2 increase.

The [ASLOCA](/www.asloca.ch)—the Swiss tenant association—provides a calculator on their website that applies the same formulas to check if a rent increase is reasonable or not. If the increase does not follow the formulas above, then you should consider challenging it.

## Rent decreases
Whenever the indices go down (usually the mortgage rate), you are eligible for a rent decrease. This is your right, and your landlord cannot refuse it if done correctly. The calculator of ASLOCA lets you check how much of a decrease you can ask for, and will provide a [template](https://vaud.asloca.ch/sites/vaud.asloca.ch/files/2025-02/01-lettre-bailleur.docxhttps://vaud.asloca.ch/sites/vaud.asloca.ch/files/2025-02/01-lettre-bailleur.docx)letter to send to the landlord. The decrease will take effect at the next term of your contract, and should be received no later than 3 months prior to that date for the request to be deemed valid.

### Special case: staggered and indexed leases
Some leases explicitly mention that the rent is *indexed* on the IPC, in which case the rent will increase each year according to only the IPC, regardless of the variation of the mortgage rate. This is generally not a good deal[^indexed], as the IPC rarely decreases, and it means you cannot ask for a rent decrease when the mortgage rate decreases.

Likewise, some leases are staggered: The rent is typically low in the first year, then gradually increases over a 5-year period. In that case, it is also not possible[^staggered] to ask for a rent decrease when the rates go down.

## Challenging a rent increase
If you deem a rent increase abusive, then you can choose to challenge it. In that case, you must do so within 30 days of receiving the notice, by addressing a letter to the “Commission de conciliation” of your préfecture. ASLOCA also provides a template letter. Note that for the letter to be valid, it should be signed by all the signatories of the lease, including your guarantor if you have one.

This will first trigger a mediation process, between you, the landlord, and the Préfecture. The goal will be to settle the dispute so as to avoid going to court over it.
If you go this way, then you will likely want to be a member of ASLOCA so they can provide legal advice and represent you the day of the mediation. 

⚠️It may happen that the landlord simply doesn’t come to the mediation. In that case, you will be allowed by the préfecture to take the landlord to court. If so, make sure you have a case before proceeding and seek legal advice, as the process will likely last long and be very costly.

In any case, after starting a procedure against your landlord, you are protected from eviction for a period of 3 years[^3ans]. A resiliation of your lease within that period may be considered as retaliation, so it is unlikely that this will happen.

## Challenging the initial rent
Similarly to a rent increase, if you spot something in the lease agreement that seems illegal, then you can challenge the initial rent within 30 days after signing the lease. The challenge is justified if one of the following conditions is met: 
The rent is increased by more than 10% compared to the previous tenant[^10%]
You signed the lease under duress. This does not necessarily mean you need to prove that you were held at gunpoint when signing the contract, it is justified when there are too few available apartments in your area. More specifically, if the 3-year average vacancy rate in your city is less than 1.5% (which is the case almost everywhere), that qualifies as duress. In Lausanne, the average vacancy rate is around 0.5%[^vacancy]

## Lease fees
When applying for a flat, it is common that you have to fill out and sign a form for the rental agency, which states that you will pay a fee (typically around 200 CHF) in case your application is selected and you choose not to sign the lease. This is a common scare tactic from agencies to try and prevent people applying to many places and only choosing once they get accepted. Under Swiss law, one can retract from negotiations at any point in time until the contract is signed, so you cannot be asked to pay a fee simply from stopping negotiations. If you refuse an apartment you applied to and the agency sends you an invoice for this fee, you should ask them to justify which costs *you* specifically incurred them. If they cannot provide that (and they probably won’t), then they have no legal basis to ask for that fee[^withdrawal1][^withdrawal2].

Similarly, some agencies may ask for an administrative fee to be paid by the tenant for establishing the contract. This should also not be paid by the tenant[^rulv]


[^mortgage]:https://www.bwo.admin.ch/bwo/fr/home/mietrecht/referenzzinssatz.html
[^IPC]:https://www.bfs.admin.ch/bfs/fr/home/statistiques/prix/indice-prix-consommation.html
[^mortgage_increase]:https://www.fedlex.admin.ch/eli/cc/1990/835_835_835/fr#art_13
[^IPC_increase]:https://hausinfo.ch/fr/droit/habitat-lois/droit-bail/augmentation-loyer.html
[^increase_format]:https://www.fedlex.admin.ch/eli/cc/1990/835_835_835/fr#art_19
[^indexed]:https://www.asloca.ch/actualites/loyers-indexables-miroir-aux-alouettes
[^staggered]:https://www.immoscout24.ch/c/fr/magazine-immobilier/louer/contrat-de-bail/loyer-echelonne-en-suisse
[^vacancy]:https://www.bfs.admin.ch/bfs/fr/home/statistiques/construction-logement/logements/logements-vacants.html
[10%]:https://www.vd.ch/themes/territoire-et-construction/logement/preservation
[^rulv]:https://prestations.vd.ch/pub/blv-publication/api/actes/a000529e-b2b9-4808-b911-586f55a7ced5/annexes/1?dmev=01.07.2020, article 8
[^withdrawal1]:https://www.geneve.ch/themes/culture/bibliotheques/interroge/reponses/payer-des-frais-indemnite-la-regie-apres-renonce-appartement-lequel-avions-postule
[^withdrawal2]https://codexavocats.ch/recherche-dappartement-dois-je-payer-une-indemnite-si-je-ne-souhaite-finalement-pas-signer-un-contrat-de-bail/
