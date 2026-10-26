.class public Lorg/jaudiotagger/audio/AudioFile;
.super Ljava/lang/Object;
.source "AudioFile.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field protected audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

.field protected extension:Ljava/lang/String;

.field protected file:Ljava/io/File;

.field protected tag:Lorg/jaudiotagger/tag/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "org.jaudiotagger.audio"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/jaudiotagger/audio/AudioHeader;Lorg/jaudiotagger/tag/Tag;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 85
    iput-object p2, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 86
    iput-object p3, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/audio/AudioHeader;Lorg/jaudiotagger/tag/Tag;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    .line 101
    iput-object p2, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 102
    iput-object p3, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    return-void
.end method

.method public static getBaseFilename(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 447
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 450
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 452
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkFileExists(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 220
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading file:path"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":abs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 223
    :cond_0
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/io/FileNotFoundException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->UNABLE_TO_FIND_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkFilePermissions(Ljava/io/File;Z)Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/ReadOnlyFileException;,
            Ljava/io/FileNotFoundException;,
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 241
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/AudioFile;->checkFileExists(Ljava/io/File;)V

    if-eqz p2, :cond_1

    .line 247
    invoke-static {v0}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 253
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {p2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_0
    sget-object p1, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unable to read file:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 250
    sget-object p1, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Permissions;->displayPermissions(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 251
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/NoReadPermissionsException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/NoReadPermissionsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_1
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isCheckIsWritable()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {v0}, Ljava/nio/file/Files;->isWritable(Ljava/nio/file/Path;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 259
    :cond_2
    sget-object p2, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lorg/jaudiotagger/audio/generic/Permissions;->displayPermissions(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 260
    sget-object p1, Lorg/jaudiotagger/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Permissions;->displayPermissions(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 261
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/ReadOnlyFileException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->NO_PERMISSIONS_TO_WRITE_TO_FILE:Lorg/jaudiotagger/logging/ErrorMessage;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/ReadOnlyFileException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 263
    :cond_3
    :goto_0
    new-instance p2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {p2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    return-object p2
.end method

.method public commit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 114
    invoke-static {p0}, Lorg/jaudiotagger/audio/AudioFileIO;->write(Lorg/jaudiotagger/audio/AudioFile;)V

    return-void
.end method

.method public convertID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/reference/ID3V2Version;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
    .locals 4

    .line 462
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 464
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile$1;->$SwitchMap$org$jaudiotagger$tag$reference$ID3V2Version:[I

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    .line 467
    :cond_1
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    .line 474
    :cond_2
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    const/4 v3, 0x3

    if-eqz v0, :cond_5

    .line 476
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile$1;->$SwitchMap$org$jaudiotagger$tag$reference$ID3V2Version:[I

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v2, :cond_4

    if-eq p2, v3, :cond_3

    goto :goto_0

    .line 483
    :cond_3
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    .line 479
    :cond_4
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v22Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    .line 486
    :cond_5
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    if-eqz v0, :cond_8

    .line 488
    sget-object v0, Lorg/jaudiotagger/audio/AudioFile$1;->$SwitchMap$org$jaudiotagger$tag$reference$ID3V2Version:[I

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/reference/ID3V2Version;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v1, :cond_7

    if-eq p2, v3, :cond_6

    goto :goto_0

    .line 495
    :cond_6
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    .line 493
    :cond_7
    new-instance p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v22Tag;

    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    return-object p2

    :cond_8
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createDefaultTag()Lorg/jaudiotagger/tag/Tag;
    .locals 3

    .line 295
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getExt()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/AudioFile;->setExt(Ljava/lang/String;)V

    .line 302
    :cond_0
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->FLAC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    new-instance v0, Lorg/jaudiotagger/tag/flac/FlacTag;

    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/flac/FlacTag;-><init>(Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    return-object v0

    .line 306
    :cond_1
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->OGG:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    return-object v0

    .line 310
    :cond_2
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->OGA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    invoke-static {}, Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/jaudiotagger/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    return-object v0

    .line 314
    :cond_3
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->MP4:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 316
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    return-object v0

    .line 318
    :cond_4
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4A:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 320
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    return-object v0

    .line 322
    :cond_5
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->M4P:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 324
    new-instance v0, Lorg/jaudiotagger/tag/mp4/Mp4Tag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/mp4/Mp4Tag;-><init>()V

    return-object v0

    .line 326
    :cond_6
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->WMA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 328
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>()V

    return-object v0

    .line 330
    :cond_7
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->WAV:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 332
    new-instance v0, Lorg/jaudiotagger/tag/wav/WavTag;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getWavOptions()Lorg/jaudiotagger/audio/wav/WavOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/wav/WavTag;-><init>(Lorg/jaudiotagger/audio/wav/WavOptions;)V

    return-object v0

    .line 334
    :cond_8
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->RA:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 336
    new-instance v0, Lorg/jaudiotagger/audio/real/RealTag;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/real/RealTag;-><init>()V

    return-object v0

    .line 338
    :cond_9
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->RM:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 340
    new-instance v0, Lorg/jaudiotagger/audio/real/RealTag;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/real/RealTag;-><init>()V

    return-object v0

    .line 342
    :cond_a
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 344
    new-instance v0, Lorg/jaudiotagger/tag/aiff/AiffTag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/aiff/AiffTag;-><init>()V

    return-object v0

    .line 346
    :cond_b
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIFC:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 348
    new-instance v0, Lorg/jaudiotagger/tag/aiff/AiffTag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/aiff/AiffTag;-><init>()V

    return-object v0

    .line 350
    :cond_c
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->AIFF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 352
    new-instance v0, Lorg/jaudiotagger/tag/aiff/AiffTag;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/aiff/AiffTag;-><init>()V

    return-object v0

    .line 354
    :cond_d
    sget-object v1, Lorg/jaudiotagger/audio/SupportedFileFormat;->DSF:Lorg/jaudiotagger/audio/SupportedFileFormat;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/SupportedFileFormat;->getFilesuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 356
    invoke-static {}, Lorg/jaudiotagger/audio/dsf/Dsf;->createDefaultTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    return-object v0

    .line 360
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create default tag for this file format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;,
            Lorg/jaudiotagger/audio/exceptions/CannotWriteException;
        }
    .end annotation

    .line 125
    invoke-static {p0}, Lorg/jaudiotagger/audio/AudioFileIO;->delete(Lorg/jaudiotagger/audio/AudioFile;)V

    return-void
.end method

.method public displayStructureAsPlainText()Ljava/lang/String;
    .locals 1

    .line 285
    const-string v0, ""

    return-object v0
.end method

.method public displayStructureAsXML()Ljava/lang/String;
    .locals 1

    .line 275
    const-string v0, ""

    return-object v0
.end method

.method public getAudioHeader()Lorg/jaudiotagger/audio/AudioHeader;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getTag()Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    return-object v0
.end method

.method public getTagAndConvertOrCreateAndSetDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 435
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTagAndConvertOrCreateDefault()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    .line 436
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/AudioFile;->setTag(Lorg/jaudiotagger/tag/Tag;)V

    .line 437
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTagAndConvertOrCreateDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 3

    .line 402
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTagOrCreateDefault()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    .line 407
    instance-of v1, v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v1, :cond_0

    .line 409
    move-object v1, v0

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getID3V2Version()Lorg/jaudiotagger/tag/reference/ID3V2Version;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jaudiotagger/audio/AudioFile;->convertID3Tag(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/reference/ID3V2Version;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getTagOrCreateAndSetDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTagOrCreateDefault()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    .line 389
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/AudioFile;->setTag(Lorg/jaudiotagger/tag/Tag;)V

    return-object v0
.end method

.method public getTagOrCreateDefault()Lorg/jaudiotagger/tag/Tag;
    .locals 1

    .line 372
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->createDefaultTag()Lorg/jaudiotagger/tag/Tag;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->extension:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->file:Ljava/io/File;

    return-void
.end method

.method public setTag(Lorg/jaudiotagger/tag/Tag;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioFile "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  --------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->audioHeader:Lorg/jaudiotagger/audio/AudioHeader;

    .line 209
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/audio/AudioFile;->tag:Lorg/jaudiotagger/tag/Tag;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/jaudiotagger/tag/Tag;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n-------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
