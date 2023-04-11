.class public abstract Landroidx/media2/session/IMediaController$Stub;
.super Landroid/os/Binder;
.source "IMediaController.java"

# interfaces
.implements Landroidx/media2/session/IMediaController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/IMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/IMediaController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.media2.session.IMediaController"

.field static final TRANSACTION_onAllowedCommandsChanged:I = 0xf

.field static final TRANSACTION_onBufferingStateChanged:I = 0x4

.field static final TRANSACTION_onChildrenChanged:I = 0x13

.field static final TRANSACTION_onConnected:I = 0xc

.field static final TRANSACTION_onCurrentMediaItemChanged:I = 0x1

.field static final TRANSACTION_onCustomCommand:I = 0x10

.field static final TRANSACTION_onDisconnected:I = 0xd

.field static final TRANSACTION_onLibraryResult:I = 0x12

.field static final TRANSACTION_onPlaybackCompleted:I = 0xa

.field static final TRANSACTION_onPlaybackInfoChanged:I = 0x7

.field static final TRANSACTION_onPlaybackSpeedChanged:I = 0x3

.field static final TRANSACTION_onPlayerStateChanged:I = 0x2

.field static final TRANSACTION_onPlaylistChanged:I = 0x5

.field static final TRANSACTION_onPlaylistMetadataChanged:I = 0x6

.field static final TRANSACTION_onRepeatModeChanged:I = 0x8

.field static final TRANSACTION_onSearchResultChanged:I = 0x14

.field static final TRANSACTION_onSeekCompleted:I = 0xb

.field static final TRANSACTION_onSessionResult:I = 0x11

.field static final TRANSACTION_onSetCustomLayout:I = 0xe

.field static final TRANSACTION_onShuffleModeChanged:I = 0x9

.field static final TRANSACTION_onSubtitleData:I = 0x19

.field static final TRANSACTION_onTrackDeselected:I = 0x18

.field static final TRANSACTION_onTrackInfoChanged:I = 0x16

.field static final TRANSACTION_onTrackSelected:I = 0x17

.field static final TRANSACTION_onVideoSizeChanged:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "androidx.media2.session.IMediaController"

    invoke-virtual {p0, p0, v0}, Landroidx/media2/session/IMediaController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "androidx.media2.session.IMediaController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/media2/session/IMediaController;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Landroidx/media2/session/IMediaController;

    return-object v1

    .line 34
    :cond_1
    nop

    .line 37
    new-instance v1, Landroidx/media2/session/IMediaController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/media2/session/IMediaController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "androidx.media2.session.IMediaController"

    .line 46
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v11, v0, :cond_19

    packed-switch v11, :pswitch_data_0

    .line 496
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 261
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 265
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_0

    .line 269
    :cond_0
    const/4 v1, 0x0

    .line 272
    .local v1, "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_1

    .line 276
    :cond_1
    const/4 v2, 0x0

    .line 279
    .local v2, "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    sget-object v3, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_2

    .line 283
    :cond_2
    const/4 v3, 0x0

    .line 285
    .local v3, "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :goto_2
    invoke-virtual {v10, v0, v1, v2, v3}, Landroidx/media2/session/IMediaController$Stub;->onSubtitleData(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    .line 286
    return v14

    .line 443
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    .end local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    .end local v3    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_1
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 447
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 448
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_3

    .line 451
    :cond_3
    const/4 v1, 0x0

    .line 453
    .restart local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_3
    invoke-virtual {v10, v0, v1}, Landroidx/media2/session/IMediaController$Stub;->onTrackDeselected(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 454
    return v14

    .line 428
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_2
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 432
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_4

    .line 436
    :cond_4
    const/4 v1, 0x0

    .line 438
    .restart local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_4
    invoke-virtual {v10, v0, v1}, Landroidx/media2/session/IMediaController$Stub;->onTrackSelected(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 439
    return v14

    .line 390
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_3
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 394
    .local v7, "_arg0":I
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 396
    .local v8, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroidx/versionedparcelable/ParcelImpl;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 397
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object v9, v0

    goto :goto_5

    .line 400
    :cond_5
    const/4 v0, 0x0

    move-object v9, v0

    .line 403
    .local v9, "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 404
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object v15, v0

    goto :goto_6

    .line 407
    :cond_6
    const/4 v0, 0x0

    move-object v15, v0

    .line 410
    .local v15, "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 411
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object/from16 v16, v0

    goto :goto_7

    .line 414
    :cond_7
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 417
    .local v16, "_arg4":Landroidx/versionedparcelable/ParcelImpl;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 418
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object/from16 v17, v0

    goto :goto_8

    .line 421
    :cond_8
    const/4 v0, 0x0

    move-object/from16 v17, v0

    .line 423
    .local v17, "_arg5":Landroidx/versionedparcelable/ParcelImpl;
    :goto_8
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/IMediaController$Stub;->onTrackInfoChanged(ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    .line 424
    return v14

    .line 239
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroidx/versionedparcelable/ParcelImpl;>;"
    .end local v9    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    .end local v15    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    .end local v16    # "_arg4":Landroidx/versionedparcelable/ParcelImpl;
    .end local v17    # "_arg5":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_4
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 244
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_9

    .line 247
    :cond_9
    const/4 v1, 0x0

    .line 250
    .restart local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 251
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_a

    .line 254
    :cond_a
    const/4 v2, 0x0

    .line 256
    .restart local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :goto_a
    invoke-virtual {v10, v0, v1, v2}, Landroidx/media2/session/IMediaController$Stub;->onVideoSizeChanged(ILandroidx/versionedparcelable/ParcelImpl;Landroidx/versionedparcelable/ParcelImpl;)V

    .line 257
    return v14

    .line 477
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    .end local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_5
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 481
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 485
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 486
    sget-object v3, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_b

    .line 489
    :cond_b
    const/4 v3, 0x0

    .line 491
    .restart local v3    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :goto_b
    invoke-virtual {v10, v0, v1, v2, v3}, Landroidx/media2/session/IMediaController$Stub;->onSearchResultChanged(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 492
    return v14

    .line 458
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_6
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 464
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 466
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 467
    sget-object v3, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_c

    .line 470
    :cond_c
    const/4 v3, 0x0

    .line 472
    .restart local v3    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :goto_c
    invoke-virtual {v10, v0, v1, v2, v3}, Landroidx/media2/session/IMediaController$Stub;->onChildrenChanged(ILjava/lang/String;ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 473
    return v14

    .line 375
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_7
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 380
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_d

    .line 383
    :cond_d
    const/4 v1, 0x0

    .line 385
    .local v1, "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_d
    invoke-virtual {v10, v0, v1}, Landroidx/media2/session/IMediaController$Stub;->onLibraryResult(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 386
    return v14

    .line 360
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_8
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 364
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 365
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_e

    .line 368
    :cond_e
    const/4 v1, 0x0

    .line 370
    .restart local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_e
    invoke-virtual {v10, v0, v1}, Landroidx/media2/session/IMediaController$Stub;->onSessionResult(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 371
    return v14

    .line 338
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_9
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 342
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 343
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_f

    .line 346
    :cond_f
    const/4 v1, 0x0

    .line 349
    .restart local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    .line 350
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_10

    .line 353
    :cond_10
    const/4 v2, 0x0

    .line 355
    .local v2, "_arg2":Landroid/os/Bundle;
    :goto_10
    invoke-virtual {v10, v0, v1, v2}, Landroidx/media2/session/IMediaController$Stub;->onCustomCommand(ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V

    .line 356
    return v14

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 328
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_11

    .line 331
    :cond_11
    const/4 v1, 0x0

    .line 333
    .restart local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_11
    invoke-virtual {v10, v0, v1}, Landroidx/media2/session/IMediaController$Stub;->onAllowedCommandsChanged(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 334
    return v14

    .line 313
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_b
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 317
    .restart local v0    # "_arg0":I
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 318
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroidx/versionedparcelable/ParcelImpl;>;"
    invoke-virtual {v10, v0, v1}, Landroidx/media2/session/IMediaController$Stub;->onSetCustomLayout(ILjava/util/List;)V

    .line 319
    return v14

    .line 305
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroidx/versionedparcelable/ParcelImpl;>;"
    :pswitch_c
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroidx/media2/session/IMediaController$Stub;->onDisconnected(I)V

    .line 309
    return v14

    .line 290
    .end local v0    # "_arg0":I
    :pswitch_d
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    .line 295
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_12

    .line 298
    :cond_12
    const/4 v1, 0x0

    .line 300
    .local v1, "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_12
    invoke-virtual {v10, v0, v1}, Landroidx/media2/session/IMediaController$Stub;->onConnected(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 301
    return v14

    .line 225
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_e
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 229
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 231
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 233
    .local v17, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 234
    .local v19, "_arg3":J
    move-object/from16 v0, p0

    move v1, v8

    move-wide v2, v15

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v7}, Landroidx/media2/session/IMediaController$Stub;->onSeekCompleted(IJJJ)V

    .line 235
    return v14

    .line 217
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":J
    .end local v17    # "_arg2":J
    .end local v19    # "_arg3":J
    :pswitch_f
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Landroidx/media2/session/IMediaController$Stub;->onPlaybackCompleted(I)V

    .line 221
    return v14

    .line 201
    .end local v0    # "_arg0":I
    :pswitch_10
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 205
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 207
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 209
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 211
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 212
    .local v15, "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/session/IMediaController$Stub;->onShuffleModeChanged(IIIII)V

    .line 213
    return v14

    .line 185
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v15    # "_arg4":I
    :pswitch_11
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 189
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 191
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 193
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 195
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 196
    .restart local v15    # "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/session/IMediaController$Stub;->onRepeatModeChanged(IIIII)V

    .line 197
    return v14

    .line 170
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v15    # "_arg4":I
    :pswitch_12
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 175
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_13

    .line 178
    :cond_13
    const/4 v1, 0x0

    .line 180
    .restart local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_13
    invoke-virtual {v10, v0, v1}, Landroidx/media2/session/IMediaController$Stub;->onPlaybackInfoChanged(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 181
    return v14

    .line 155
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_13
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 160
    sget-object v1, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_14

    .line 163
    :cond_14
    const/4 v1, 0x0

    .line 165
    .restart local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_14
    invoke-virtual {v10, v0, v1}, Landroidx/media2/session/IMediaController$Stub;->onPlaylistMetadataChanged(ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 166
    return v14

    .line 127
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_14
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 131
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 132
    sget-object v0, Landroidx/media2/common/ParcelImplListSlice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/ParcelImplListSlice;

    move-object v8, v0

    goto :goto_15

    .line 135
    :cond_15
    const/4 v0, 0x0

    move-object v8, v0

    .line 138
    .local v8, "_arg1":Landroidx/media2/common/ParcelImplListSlice;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 139
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object v9, v0

    goto :goto_16

    .line 142
    :cond_16
    const/4 v0, 0x0

    move-object v9, v0

    .line 145
    .local v9, "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 147
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 149
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 150
    .local v17, "_arg5":I
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/IMediaController$Stub;->onPlaylistChanged(ILandroidx/media2/common/ParcelImplListSlice;Landroidx/versionedparcelable/ParcelImpl;III)V

    .line 151
    return v14

    .line 104
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroidx/media2/common/ParcelImplListSlice;
    .end local v9    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    :pswitch_15
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 108
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 109
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object/from16 v16, v0

    goto :goto_17

    .line 112
    :cond_17
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 115
    .local v16, "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 117
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 119
    .local v18, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 121
    .local v20, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 122
    .local v22, "_arg5":J
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    invoke-virtual/range {v0 .. v9}, Landroidx/media2/session/IMediaController$Stub;->onBufferingStateChanged(ILandroidx/versionedparcelable/ParcelImpl;IJJJ)V

    .line 123
    return v14

    .line 90
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":J
    .end local v20    # "_arg4":J
    .end local v22    # "_arg5":J
    :pswitch_16
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 94
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 96
    .local v8, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 98
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .line 99
    .local v17, "_arg3":F
    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v8

    move-wide v4, v15

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/IMediaController$Stub;->onPlaybackSpeedChanged(IJJF)V

    .line 100
    return v14

    .line 76
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":J
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":F
    :pswitch_17
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 80
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 82
    .restart local v8    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 84
    .restart local v15    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 85
    .local v17, "_arg3":I
    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v8

    move-wide v4, v15

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/IMediaController$Stub;->onPlayerStateChanged(IJJI)V

    .line 86
    return v14

    .line 55
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":J
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":I
    :pswitch_18
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 59
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 60
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v12}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object v7, v0

    goto :goto_18

    .line 63
    :cond_18
    const/4 v0, 0x0

    move-object v7, v0

    .line 66
    .local v7, "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 68
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 70
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 71
    .local v15, "_arg4":I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/session/IMediaController$Stub;->onCurrentMediaItemChanged(ILandroidx/versionedparcelable/ParcelImpl;III)V

    .line 72
    return v14

    .line 50
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroidx/versionedparcelable/ParcelImpl;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v15    # "_arg4":I
    :cond_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
