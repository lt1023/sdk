.class public abstract Landroidx/media2/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Landroidx/media2/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.media2.session.IMediaSession"

.field static final TRANSACTION_addPlaylistItem:I = 0x19

.field static final TRANSACTION_adjustVolume:I = 0x4

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_deselectTrack:I = 0x2b

.field static final TRANSACTION_fastForward:I = 0x8

.field static final TRANSACTION_getChildren:I = 0x24

.field static final TRANSACTION_getItem:I = 0x23

.field static final TRANSACTION_getLibraryRoot:I = 0x22

.field static final TRANSACTION_getSearchResult:I = 0x26

.field static final TRANSACTION_onControllerResult:I = 0x21

.field static final TRANSACTION_onCustomCommand:I = 0xd

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x5

.field static final TRANSACTION_playFromMediaId:I = 0x13

.field static final TRANSACTION_playFromSearch:I = 0x12

.field static final TRANSACTION_playFromUri:I = 0x11

.field static final TRANSACTION_prepare:I = 0x7

.field static final TRANSACTION_prepareFromMediaId:I = 0x10

.field static final TRANSACTION_prepareFromSearch:I = 0xf

.field static final TRANSACTION_prepareFromUri:I = 0xe

.field static final TRANSACTION_release:I = 0x2

.field static final TRANSACTION_removePlaylistItem:I = 0x1a

.field static final TRANSACTION_replacePlaylistItem:I = 0x1b

.field static final TRANSACTION_rewind:I = 0x9

.field static final TRANSACTION_search:I = 0x25

.field static final TRANSACTION_seekTo:I = 0xc

.field static final TRANSACTION_selectTrack:I = 0x2a

.field static final TRANSACTION_setMediaItem:I = 0x17

.field static final TRANSACTION_setPlaybackSpeed:I = 0x15

.field static final TRANSACTION_setPlaylist:I = 0x16

.field static final TRANSACTION_setRating:I = 0x14

.field static final TRANSACTION_setRepeatMode:I = 0x1f

.field static final TRANSACTION_setShuffleMode:I = 0x20

.field static final TRANSACTION_setSurface:I = 0x29

.field static final TRANSACTION_setVolumeTo:I = 0x3

.field static final TRANSACTION_skipBackward:I = 0xb

.field static final TRANSACTION_skipForward:I = 0xa

.field static final TRANSACTION_skipToNextItem:I = 0x1e

.field static final TRANSACTION_skipToPlaylistItem:I = 0x1c

.field static final TRANSACTION_skipToPreviousItem:I = 0x1d

.field static final TRANSACTION_subscribe:I = 0x27

.field static final TRANSACTION_unsubscribe:I = 0x28

.field static final TRANSACTION_updatePlaylistMetadata:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "androidx.media2.session.IMediaSession"

    invoke-virtual {p0, p0, v0}, Landroidx/media2/session/IMediaSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "androidx.media2.session.IMediaSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/media2/session/IMediaSession;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Landroidx/media2/session/IMediaSession;

    return-object v1

    .line 34
    :cond_1
    nop

    .line 37
    new-instance v1, Landroidx/media2/session/IMediaSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/media2/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "androidx.media2.session.IMediaSession"

    .line 46
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v8, v0, :cond_17

    packed-switch v8, :pswitch_data_0

    .line 708
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 549
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 553
    .local v0, "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 555
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_0

    .line 559
    :cond_0
    const/4 v2, 0x0

    .line 561
    .local v2, "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :goto_0
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->deselectTrack(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 562
    return v11

    .line 532
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 536
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 538
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_1

    .line 542
    :cond_1
    const/4 v2, 0x0

    .line 544
    .restart local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :goto_1
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->selectTrack(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 545
    return v11

    .line 515
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 519
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 522
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    goto :goto_2

    .line 525
    :cond_2
    const/4 v2, 0x0

    .line 527
    .local v2, "_arg2":Landroid/view/Surface;
    :goto_2
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->setSurface(Landroidx/media2/session/IMediaController;ILandroid/view/Surface;)V

    .line 528
    return v11

    .line 696
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/view/Surface;
    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 700
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 702
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->unsubscribe(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V

    .line 704
    return v11

    .line 677
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 681
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 683
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 685
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 686
    sget-object v3, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_3

    .line 689
    :cond_3
    const/4 v3, 0x0

    .line 691
    .local v3, "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :goto_3
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->subscribe(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    .line 692
    return v11

    .line 654
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_5
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v12

    .line 658
    .local v12, "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 660
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 662
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 664
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 666
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 667
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object/from16 v17, v0

    goto :goto_4

    .line 670
    :cond_4
    const/4 v0, 0x0

    move-object/from16 v17, v0

    .line 672
    .local v17, "_arg5":Landroidx/versionedparcelable/ParcelImpl;
    :goto_4
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/IMediaSession$Stub;->getSearchResult(Landroidx/media2/session/IMediaController;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V

    .line 673
    return v11

    .line 635
    .end local v12    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 639
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 641
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 643
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 644
    sget-object v3, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_5

    .line 647
    :cond_5
    const/4 v3, 0x0

    .line 649
    .restart local v3    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :goto_5
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->search(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    .line 650
    return v11

    .line 612
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_7
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v12

    .line 616
    .restart local v12    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 618
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 620
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 622
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 624
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 625
    sget-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/ParcelImpl;

    move-object/from16 v17, v0

    goto :goto_6

    .line 628
    :cond_6
    const/4 v0, 0x0

    move-object/from16 v17, v0

    .line 630
    .restart local v17    # "_arg5":Landroidx/versionedparcelable/ParcelImpl;
    :goto_6
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/IMediaSession$Stub;->getChildren(Landroidx/media2/session/IMediaController;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V

    .line 631
    return v11

    .line 600
    .end local v12    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_8
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 604
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 606
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 607
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->getItem(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V

    .line 608
    return v11

    .line 583
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 587
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 589
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 590
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_7

    .line 593
    :cond_7
    const/4 v2, 0x0

    .line 595
    .local v2, "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :goto_7
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->getLibraryRoot(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 596
    return v11

    .line 566
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 570
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 572
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 573
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_8

    .line 576
    :cond_8
    const/4 v2, 0x0

    .line 578
    .restart local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :goto_8
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->onControllerResult(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 579
    return v11

    .line 503
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 507
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 509
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 510
    .local v2, "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->setShuffleMode(Landroidx/media2/session/IMediaController;II)V

    .line 511
    return v11

    .line 491
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 495
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 497
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->setRepeatMode(Landroidx/media2/session/IMediaController;II)V

    .line 499
    return v11

    .line 481
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 485
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 486
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media2/session/IMediaSession$Stub;->skipToNextItem(Landroidx/media2/session/IMediaController;I)V

    .line 487
    return v11

    .line 471
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    :pswitch_e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 475
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 476
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media2/session/IMediaSession$Stub;->skipToPreviousItem(Landroidx/media2/session/IMediaController;I)V

    .line 477
    return v11

    .line 459
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 463
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 465
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 466
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->skipToPlaylistItem(Landroidx/media2/session/IMediaController;II)V

    .line 467
    return v11

    .line 445
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_10
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 449
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 451
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 453
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->replacePlaylistItem(Landroidx/media2/session/IMediaController;IILjava/lang/String;)V

    .line 455
    return v11

    .line 433
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 437
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 439
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 440
    .restart local v2    # "_arg2":I
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->removePlaylistItem(Landroidx/media2/session/IMediaController;II)V

    .line 441
    return v11

    .line 419
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_12
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 423
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 425
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 427
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 428
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->addPlaylistItem(Landroidx/media2/session/IMediaController;IILjava/lang/String;)V

    .line 429
    return v11

    .line 402
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 406
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 408
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 409
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_9

    .line 412
    :cond_9
    const/4 v2, 0x0

    .line 414
    .local v2, "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :goto_9
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->updatePlaylistMetadata(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 415
    return v11

    .line 390
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_14
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 394
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 396
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->setMediaItem(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V

    .line 398
    return v11

    .line 371
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_15
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 375
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 377
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 379
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 380
    sget-object v3, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_a

    .line 383
    :cond_a
    const/4 v3, 0x0

    .line 385
    .local v3, "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :goto_a
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->setPlaylist(Landroidx/media2/session/IMediaController;ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;)V

    .line 386
    return v11

    .line 359
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_16
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 363
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 365
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 366
    .local v2, "_arg2":F
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->setPlaybackSpeed(Landroidx/media2/session/IMediaController;IF)V

    .line 367
    return v11

    .line 340
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":F
    :pswitch_17
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 344
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 349
    sget-object v3, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_b

    .line 352
    :cond_b
    const/4 v3, 0x0

    .line 354
    .restart local v3    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :goto_b
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->setRating(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    .line 355
    return v11

    .line 321
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroidx/versionedparcelable/ParcelImpl;
    :pswitch_18
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 325
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 327
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 329
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 330
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_c

    .line 333
    :cond_c
    const/4 v3, 0x0

    .line 335
    .local v3, "_arg3":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->playFromMediaId(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 336
    return v11

    .line 302
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_19
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 306
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 308
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 311
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_d

    .line 314
    :cond_d
    const/4 v3, 0x0

    .line 316
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    :goto_d
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->playFromSearch(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 317
    return v11

    .line 278
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_1a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 282
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 284
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 285
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    goto :goto_e

    .line 288
    :cond_e
    const/4 v2, 0x0

    .line 291
    .local v2, "_arg2":Landroid/net/Uri;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 292
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_f

    .line 295
    :cond_f
    const/4 v3, 0x0

    .line 297
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    :goto_f
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->playFromUri(Landroidx/media2/session/IMediaController;ILandroid/net/Uri;Landroid/os/Bundle;)V

    .line 298
    return v11

    .line 259
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/net/Uri;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_1b
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 263
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 265
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 268
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_10

    .line 271
    :cond_10
    const/4 v3, 0x0

    .line 273
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    :goto_10
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->prepareFromMediaId(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 274
    return v11

    .line 240
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_1c
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 244
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 246
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 249
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_11

    .line 252
    :cond_11
    const/4 v3, 0x0

    .line 254
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    :goto_11
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->prepareFromSearch(Landroidx/media2/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 255
    return v11

    .line 216
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_1d
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 220
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    .line 223
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    goto :goto_12

    .line 226
    :cond_12
    const/4 v2, 0x0

    .line 229
    .local v2, "_arg2":Landroid/net/Uri;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 230
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_13

    .line 233
    :cond_13
    const/4 v3, 0x0

    .line 235
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    :goto_13
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->prepareFromUri(Landroidx/media2/session/IMediaController;ILandroid/net/Uri;Landroid/os/Bundle;)V

    .line 236
    return v11

    .line 192
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/net/Uri;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_1e
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 196
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 199
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_14

    .line 202
    :cond_14
    const/4 v2, 0x0

    .line 205
    .local v2, "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 206
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    goto :goto_15

    .line 209
    :cond_15
    const/4 v3, 0x0

    .line 211
    .restart local v3    # "_arg3":Landroid/os/Bundle;
    :goto_15
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->onCustomCommand(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V

    .line 212
    return v11

    .line 180
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_1f
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 184
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 187
    .local v2, "_arg2":J
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->seekTo(Landroidx/media2/session/IMediaController;IJ)V

    .line 188
    return v11

    .line 170
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 174
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media2/session/IMediaSession$Stub;->skipBackward(Landroidx/media2/session/IMediaController;I)V

    .line 176
    return v11

    .line 160
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    :pswitch_21
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 164
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media2/session/IMediaSession$Stub;->skipForward(Landroidx/media2/session/IMediaController;I)V

    .line 166
    return v11

    .line 150
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    :pswitch_22
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 154
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 155
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media2/session/IMediaSession$Stub;->rewind(Landroidx/media2/session/IMediaController;I)V

    .line 156
    return v11

    .line 140
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    :pswitch_23
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 144
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media2/session/IMediaSession$Stub;->fastForward(Landroidx/media2/session/IMediaController;I)V

    .line 146
    return v11

    .line 130
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    :pswitch_24
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media2/session/IMediaSession$Stub;->prepare(Landroidx/media2/session/IMediaController;I)V

    .line 136
    return v11

    .line 120
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    :pswitch_25
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 124
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media2/session/IMediaSession$Stub;->pause(Landroidx/media2/session/IMediaController;I)V

    .line 126
    return v11

    .line 110
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    :pswitch_26
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 114
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media2/session/IMediaSession$Stub;->play(Landroidx/media2/session/IMediaController;I)V

    .line 116
    return v11

    .line 96
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    :pswitch_27
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 100
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 105
    .local v3, "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->adjustVolume(Landroidx/media2/session/IMediaController;III)V

    .line 106
    return v11

    .line 82
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_28
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 86
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 91
    .restart local v3    # "_arg3":I
    invoke-virtual {v7, v0, v1, v2, v3}, Landroidx/media2/session/IMediaSession$Stub;->setVolumeTo(Landroidx/media2/session/IMediaController;III)V

    .line 92
    return v11

    .line 72
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_29
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 76
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Landroidx/media2/session/IMediaSession$Stub;->release(Landroidx/media2/session/IMediaController;I)V

    .line 78
    return v11

    .line 55
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    :pswitch_2a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/session/IMediaController;

    move-result-object v0

    .line 59
    .restart local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    .line 62
    sget-object v2, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_16

    .line 65
    :cond_16
    const/4 v2, 0x0

    .line 67
    .local v2, "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :goto_16
    invoke-virtual {v7, v0, v1, v2}, Landroidx/media2/session/IMediaSession$Stub;->connect(Landroidx/media2/session/IMediaController;ILandroidx/versionedparcelable/ParcelImpl;)V

    .line 68
    return v11

    .line 50
    .end local v0    # "_arg0":Landroidx/media2/session/IMediaController;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroidx/versionedparcelable/ParcelImpl;
    :cond_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
