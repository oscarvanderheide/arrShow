function c = lipari()

persistent cmap
if isempty(cmap)
	cmap = [...
		0.01137                   0.07324                  0.148284
		0.013965                  0.079062                   0.15537
		0.015899                  0.084718                  0.162521
		0.017234                  0.090035                  0.169728
		0.018046                  0.095138                   0.17697
		0.018987                       0.1                  0.184274
		 0.01997                  0.104911                  0.191606
		   0.021                  0.109963                  0.198961
		0.022084                  0.114884                   0.20639
		0.023227                  0.119924                  0.213776
		 0.02444                  0.124981                  0.221213
		0.025732                  0.130104                  0.228657
		0.027114                  0.135178                  0.236104
		0.028602                  0.140291                   0.24354
		0.030209                  0.145478                  0.251025
		0.031951                  0.150619                   0.25848
		0.033828                  0.155833                  0.265955
		0.036137                  0.161049                  0.273414
		0.038425                  0.166276                  0.280837
		0.040951                  0.171536                  0.288282
		0.043537                  0.176819                  0.295697
		0.046467                  0.182111                  0.303085
		0.049594                  0.187473                  0.310472
		0.052785                  0.192789                   0.31779
		0.056373                  0.198137                  0.325072
		0.060123                  0.203522                  0.332335
		0.064059                  0.208893                  0.339525
		0.068323                   0.21429                  0.346641
		0.072795                  0.219688                  0.353691
		0.077499                  0.225063                  0.360661
		0.082595                  0.230463                  0.367551
		0.087912                  0.235873                  0.374351
		0.093441                  0.241239                  0.381025
		0.099307                   0.24659                   0.38756
		0.105413                  0.251937                  0.393974
		0.111813                   0.25723                  0.400242
		0.118433                  0.262485                  0.406341
		0.125243                  0.267672                  0.412263
		0.132308                  0.272835                  0.417985
		0.139522                  0.277918                  0.423506
		 0.14698                  0.282919                   0.42882
		0.154569                  0.287803                  0.433888
		0.162316                  0.292606                  0.438725
		0.170138                  0.297302                  0.443314
		0.178074                  0.301843                  0.447622
		0.186034                   0.30629                  0.451681
		0.194038                  0.310565                  0.455448
		0.202008                  0.314663                  0.458938
			0.21                  0.318627                  0.462138
		0.217939                  0.322418                  0.465058
		0.225808                  0.326006                  0.467698
		0.233544                  0.329454                  0.470063
		0.241213                  0.332694                  0.472151
		0.248744                  0.335738                  0.473965
		0.256094                    0.3386                  0.475542
		0.263329                   0.34129                  0.476858
		0.270378                  0.343785                   0.47795
		0.277238                  0.346109                  0.478825
		0.283919                  0.348279                  0.479499
		0.290422                  0.350279                  0.479979
		0.296766                  0.352104                   0.48028
		0.302897                  0.353796                  0.480422
		0.308898                  0.355368                  0.480419
		0.314684                  0.356787                  0.480285
		0.320355                  0.358086                  0.480032
		 0.32583                   0.35927                   0.47967
		0.331185                  0.360355                  0.479208
		0.336416                  0.361358                   0.47866
		0.341527                  0.362272                  0.478039
		0.346516                  0.363098                  0.477353
		0.351412                  0.363861                  0.476608
		0.356223                  0.364562                  0.475814
		0.360933                  0.365208                  0.474974
		0.365601                  0.365807                   0.47408
		0.370195                  0.366362                  0.473154
		0.374753                  0.366868                  0.472216
		0.379261                  0.367335                  0.471236
		0.383746                  0.367781                  0.470232
		0.388198                  0.368207                   0.46921
		0.392637                  0.368608                  0.468151
		0.397066                  0.368982                  0.467095
		0.401502                  0.369337                  0.466002
		0.405945                  0.369677                  0.464911
		0.410391                  0.370008                  0.463798
		0.414838                  0.370329                  0.462661
		0.419318                  0.370641                   0.46153
		0.423806                  0.370946                  0.460367
		0.428335                  0.371246                  0.459212
		0.432886                  0.371542                  0.458027
		0.437471                  0.371834                  0.456836
		0.442084                  0.372124                  0.455637
		0.446721                  0.372413                   0.45443
		0.451402                    0.3727                    0.4532
		0.456112                  0.372987                  0.451972
		0.460861                  0.373274                  0.450722
		0.465644                  0.373563                  0.449468
		 0.47048                  0.373853                  0.448196
		0.475346                  0.374142                  0.446922
		0.480239                   0.37443                   0.44563
		0.485169                  0.374716                  0.444348
		0.490149                  0.375002                  0.443038
		0.495165                  0.375292                  0.441725
		0.500209                  0.375588                  0.440391
		0.505298                   0.37589					0.439053
		0.510431                  0.376194                  0.437723
		0.515595                  0.376498                  0.436363
		0.520808                    0.3768                  0.435003
		 0.52606                  0.377102                  0.433614
		0.531345                  0.377408                  0.432248
		0.536679                  0.377717                  0.430847
		0.542039                  0.378031                  0.429441
		 0.54745                  0.378347                   0.42803
		  0.5529                  0.378667                  0.426602
		0.558389                  0.378991                  0.425175
		0.563937                  0.379317                  0.423722
		0.569504                  0.379648                  0.422267
		0.575126                  0.379984                  0.420807
		 0.58079                  0.380325                  0.419345
		0.586496                  0.380672                   0.41786
		0.592251                  0.381023                  0.416371
		0.598033                  0.381375                  0.414871
		0.603878                  0.381729                  0.413368
		0.609753                  0.382092                  0.411849
		0.615676                  0.382468                  0.410336
		0.621644                  0.382858                  0.408797
		0.627665                  0.383257                   0.40726
		0.633729                   0.38366                  0.405726
		0.639835                  0.384073                   0.40417
		0.645983                  0.384501                  0.402616
		0.652186                  0.384947                  0.401076
		 0.65843                  0.385413                  0.399501
		 0.66472                  0.385899                  0.397959
		0.671065                   0.38641                  0.396398
		0.677455                  0.386948                  0.394848
		0.683877                  0.387517                    0.3933
		0.690355                  0.388122                  0.391767
		0.696877                  0.388769                  0.390232
		0.703442                  0.389446                  0.388729
		0.710045                  0.390171                  0.387222
		 0.71669                  0.390967                  0.385745
		0.723361                  0.391808                    0.3843
		0.730077                  0.392714                  0.382885
		0.736813                  0.393699                  0.381501
		0.743578                  0.394768                  0.380152
		0.750358                  0.395931                   0.37885
		0.757152                  0.397174                  0.377604
		0.763951                  0.398543                  0.376424
		0.770753                  0.400018                  0.375287
		0.777544                  0.401621                   0.37425
		0.784314                  0.403371                  0.373272
		0.791048                  0.405253                  0.372388
		0.797746                  0.407293                  0.371603
		0.804395                  0.409503                  0.370926
		0.810973                  0.411881                  0.370362
		0.817473                  0.414442                   0.36992
		0.823879                  0.417202                  0.369609
		0.830181                  0.420143                  0.369436
		0.836353                  0.423287                  0.369406
		 0.84239                  0.426648                  0.369526
		0.848263                  0.430214                  0.369804
		0.853968                  0.433978                  0.370247
		 0.85949                  0.437974                  0.370858
		0.864803                  0.442161                  0.371642
		0.869899                  0.446539                  0.372604
		0.874767                  0.451122                  0.373748
		0.879389                  0.455884                  0.375054
		0.883761                   0.46082                  0.376553
		 0.88786                  0.465922                  0.378203
		0.891692                  0.471184                  0.380033
		0.895246                  0.476567                   0.38202
		0.898512                  0.482077                  0.384174
		0.901498                   0.48769                   0.38647
		0.904197                  0.493374                  0.388928
		0.906618                  0.499143                  0.391507
		0.908756                  0.504965                  0.394202
		0.910625                   0.51082                  0.397017
		0.912225                  0.516705                  0.399943
		0.913575                  0.522593                  0.402968
		0.914675                  0.528483                  0.406078
		 0.91554                  0.534347                  0.409251
		 0.91619                  0.540189                  0.412504
		0.916636                  0.546003                  0.415797
		0.916889                  0.551762                  0.419152
		0.916963                  0.557475                  0.422534
		0.916874                  0.563131                  0.425965
		0.916636                  0.568719                  0.429427
		0.916264                  0.574252                  0.432909
		0.915775                  0.579733                  0.436411
		0.915186                   0.58514                  0.439927
		0.914509                  0.590475                  0.443461
		0.913754                  0.595759                  0.447003
		0.912931                   0.60098                  0.450565
		0.912059                  0.606142                  0.454139
		0.911148                  0.611261                  0.457722
		0.910211                  0.616321                  0.461331
		0.909249                  0.621333                  0.464954
		0.908289                  0.626308                  0.468602
		0.907326                  0.631251                  0.472281
		0.906374                   0.63616                  0.475986
		0.905445                  0.641036                  0.479732
		0.904539                    0.6459                  0.483509
		0.903673                  0.650752                  0.487354
		0.902853                  0.655593                  0.491251
		0.902079                  0.660426                  0.495194
		0.901366                  0.665267                  0.499209
		0.900717                  0.670121                  0.503303
		0.900141                  0.674976                  0.507492
		0.899641                  0.679851					0.511757
		0.899223                  0.684756                  0.516121
		0.898892                  0.689692                  0.520598
		0.898654                  0.694648                  0.525185
		0.898515                   0.69965                  0.529889
		 0.89848                  0.704692                  0.534713
		0.898551                  0.709779                  0.539663
		0.898735                  0.714907                  0.544759
		0.899033                   0.72009                   0.54999
		0.899448                  0.725327                  0.555359
		0.899981                  0.730608                  0.560882
		0.900635                  0.735945                   0.56656
		0.901414                  0.741342                  0.572384
		0.902319                  0.746799                  0.578354
		 0.90335                  0.752305                   0.58449
		0.904502                  0.757873                  0.590772
		0.905785                  0.763489                  0.597217
		0.907189                  0.769161                  0.603808
		0.908714                  0.774888                  0.610543
		0.910365                  0.780666                  0.617427
		0.912129                  0.786497                  0.624458
		0.914016                  0.792365                  0.631624
		0.916005                  0.798281                  0.638924
		0.918116                  0.804242                  0.646354
		0.920324                  0.810234                  0.653908
		 0.92264                  0.816274                  0.661585
		0.925046                  0.822341                  0.669369
		0.927548                  0.828436                  0.677263
		0.930142                  0.834563                  0.685252
		0.932811                  0.840714                  0.693336
		0.935565                  0.846882                  0.701504
		0.938387                  0.853077                  0.709763
		0.941274                  0.859286                  0.718088
		0.944228                  0.865508                  0.726484
		0.947235                  0.871746                  0.734943
		 0.95029                  0.877987                  0.743453
		0.953394                  0.884237                  0.752011
		0.956533                  0.890486                  0.760613
		0.959709                  0.896742                  0.769246
		0.962913                  0.902994                  0.777919
		 0.96614                   0.90924                  0.786616
		0.969388                  0.915482                  0.795324
		0.972654                  0.921726                  0.804056
		0.975921                  0.927954                  0.812794
		0.979202                  0.934179                   0.82155
		0.982484                  0.940402                  0.830308
		0.985762                   0.94661                   0.83907
		0.989038                  0.952817                  0.847836
		0.992307                  0.959017                  0.856609]; 
end
c = cmap;


% Harcopy of the matplotlib license in case the website quoted above changes:
% License

%Matplotlib only uses BSD compatible code, and its license is based on the PSF license. 
%See the Open Source Initiative licenses page for details on individual licenses. 
%Non-BSD compatible licenses (eg LGPL) are acceptable in matplotlib toolkits. 
%For a discussion of the motivations behind the licencing choice, see Licenses.
%Copyright Policy
%
%John Hunter began matplotlib around 2003. Since shortly before his passing in 2012, 
%Michael Droettboom has been the lead maintainer of matplotlib, but, as has 
%always been the case, matplotlib is the work of many.
%
%Prior to July of 2013, and the 1.3.0 release, the copyright of the source code 
%was held by John Hunter. As of July 2013, and the 1.3.0 release, matplotlib 
%has moved to a shared copyright model.
%
%matplotlib uses a shared copyright model. Each contributor maintains copyright 
%over their contributions to matplotlib. But, it is important to note that 
%these contributions are typically only changes to the repositories. Thus, 
%the matplotlib source code, in its entirety, is not the copyright of any 
%single person or institution. Instead, it is the collective copyright of 
%the entire matplotlib Development Team. If individual contributors want 
%to maintain a record of what changes/contributions they have specific 
%copyright on, they should indicate their copyright in the commit message 
%of the change, when they commit the change to one of the matplotlib repositories.
%
%The Matplotlib Development Team is the set of all contributors to the 
%matplotlib project. A full list can be obtained from the git version 
%control logs.
%License agreement for matplotlib 1.4.0
%
%1. This LICENSE AGREEMENT is between the Matplotlib Development Team (“MDT”), 
%and the Individual or Organization (“Licensee”) accessing and otherwise 
%using matplotlib software in source or binary form and its associated documentation.
%
%2. Subject to the terms and conditions of this License Agreement, MDT hereby 
%grants Licensee a nonexclusive, royalty-free, world-wide license to reproduce, 
%analyze, test, perform and/or display publicly, prepare derivative works, 
%distribute, and otherwise use matplotlib 1.4.0 alone or in any derivative version, 
%provided, however, that MDT’s License Agreement and MDT’s notice of copyright, 
%i.e., “Copyright (c) 2012-2013 Matplotlib Development Team; All Rights Reserved” 
%are retained in matplotlib 1.4.0 alone or in any derivative version prepared by Licensee.
%
%3. In the event Licensee prepares a derivative work that is based on or incorporates 
%matplotlib 1.4.0 or any part thereof, and wants to make the derivative work available 
%to others as provided herein, then Licensee hereby agrees to include in any such work 
%a brief summary of the changes made to matplotlib 1.4.0.
%
%4. MDT is making matplotlib 1.4.0 available to Licensee on an “AS IS” basis. 
%MDT MAKES NO REPRESENTATIONS OR WARRANTIES, EXPRESS OR IMPLIED. BY WAY OF EXAMPLE, 
%BUT NOT LIMITATION, MDT MAKES NO AND DISCLAIMS ANY REPRESENTATION OR WARRANTY OF 
%MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE OR THAT THE USE OF 
%MATPLOTLIB 1.4.0 WILL NOT INFRINGE ANY THIRD PARTY RIGHTS.
%
%5. MDT SHALL NOT BE LIABLE TO LICENSEE OR ANY OTHER USERS OF MATPLOTLIB 1.4.0 FOR 
%ANY INCIDENTAL, SPECIAL, OR CONSEQUENTIAL DAMAGES OR LOSS AS A RESULT OF MODIFYING, 
%DISTRIBUTING, OR OTHERWISE USING MATPLOTLIB 1.4.0, OR ANY DERIVATIVE THEREOF, 
%EVEN IF ADVISED OF THE POSSIBILITY THEREOF.
%
%6. This License Agreement will automatically terminate upon a material breach of 
%its terms and conditions.
%
%7. Nothing in this License Agreement shall be deemed to create any relationship 
%of agency, partnership, or joint venture between MDT and Licensee. This 
%License Agreement does not grant permission to use MDT trademarks or trade name 
%in a trademark sense to endorse or promote products or services of Licensee, 
%or any third party.
%
%8. By copying, installing or otherwise using matplotlib 1.4.0, Licensee agrees 
%to be bound by the terms and conditions of this License Agreement.
