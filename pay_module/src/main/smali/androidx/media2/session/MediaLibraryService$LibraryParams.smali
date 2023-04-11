.class public final Landroidx/media2/session/MediaLibraryService$LibraryParams;
.super Ljava/lang/Object;
.source "MediaLibraryService.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaLibraryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/MediaLibraryService$LibraryParams$Builder;
    }
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mOffline:I

.field mRecent:I

.field mSuggested:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;III)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "recent"    # I
    .param p3, "offline"    # I
    .param p4, "suggested"    # I

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->mBundle:Landroid/os/Bundle;

    .line 494
    iput p2, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->mRecent:I

    .line 495
    iput p3, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->mOffline:I

    .line 496
    iput p4, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->mSuggested:I

    .line 497
    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;ZZZ)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "recent"    # Z
    .param p3, "offline"    # Z
    .param p4, "suggested"    # Z

    .line 486
    nop

    .line 487
    invoke-static {p2}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->convertToInteger(Z)I

    move-result v0

    .line 488
    invoke-static {p3}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->convertToInteger(Z)I

    move-result v1

    .line 489
    invoke-static {p4}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->convertToInteger(Z)I

    move-result v2

    .line 486
    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/media2/session/MediaLibraryService$LibraryParams;-><init>(Landroid/os/Bundle;III)V

    .line 490
    return-void
.end method

.method private static convertToBoolean(I)Z
    .locals 1
    .param p0, "a"    # I

    .line 504
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private static convertToInteger(Z)I
    .locals 0
    .param p0, "a"    # Z

    .line 500
    nop

    return p0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 555
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public isOffline()Z
    .locals 1

    .line 532
    iget v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->mOffline:I

    invoke-static {v0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->convertToBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isRecent()Z
    .locals 1

    .line 518
    iget v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->mRecent:I

    invoke-static {v0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->convertToBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSuggested()Z
    .locals 1

    .line 546
    iget v0, p0, Landroidx/media2/session/MediaLibraryService$LibraryParams;->mSuggested:I

    invoke-static {v0}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->convertToBoolean(I)Z

    move-result v0

    return v0
.end method
